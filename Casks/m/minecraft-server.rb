cask "minecraft-server" do
  version "26.2,823e2250d24b3ddac457a60c92a6a941943fcd6a"
  sha256 "cdacdfb25898de5e4b4b0e5ddcc2722f77067e46605709c2d886c000ebb63ec5"

  url "https://piston-data.mojang.com/v1/objects/#{version.csv.second}/server.jar"
  name "Minecraft Server"
  desc "Run a Minecraft multiplayer server"
  homepage "https://www.minecraft.net/en-us/"

  # The server download page (https://www.minecraft.net/en-us/download/server)
  # HTML does not contain version information or a download link, as they are
  # fetched using separate JavaScript requests.
  livecheck do
    url "https://net-secondary.web.minecraft-services.net/api/v1.0/download/latest"
    regex(%r{/objects/(\h+)/server\.jar}i)
    strategy :json do |json, regex|
      latest_version = json["result"]
      next unless latest_version

      # Only fetch the download links JSON if the upstream version is newer than
      # the current cask version
      next version if latest_version == version.csv.first

      links_content = Homebrew::Livecheck::Strategy.page_content(
        "https://net-secondary.web.minecraft-services.net/api/v1.0/download/links",
      )[:content]
      next latest_version if links_content.blank?

      links_json = Homebrew::Livecheck::Strategy::Json.parse_json(links_content)
      link_hash = nil
      links_json.dig("result", "links")&.each do |link|
        next if link["downloadType"] != "serverJar"

        match = link["downloadUrl"]&.match(regex)
        next if match.blank?

        link_hash = match[1]
        break
      end

      link_hash ? "#{latest_version},#{link_hash}" : latest_version
    end
  end

  container type: :naked

  config_dir = HOMEBREW_PREFIX.join("etc", "minecraft-server")

  command_wrapper "minecraft-server", content: <<~SH
    #!/bin/sh
    cd '#{config_dir}' && \
      exec /usr/bin/java ${@:--Xms1024M -Xmx1024M} -jar '#{staged_path}/server.jar' nogui
  SH

  preflight_steps do
    mkdir_p "{{HOMEBREW_PREFIX}}/etc/minecraft-server"
  end

  eula_file = config_dir.join("eula.txt")

  postflight_steps do
    run "minecraft-server", base: :staged_path
    inreplace "{{HOMEBREW_PREFIX}}/etc/minecraft-server/eula.txt", "eula=false", "eula=TRUE", audit_result: false
  end

  uninstall delete: eula_file

  zap trash: config_dir

  caveats do
    depends_on_java "16+"
    <<~EOS
      Configuration files are located in

        #{config_dir}
    EOS
  end
end
