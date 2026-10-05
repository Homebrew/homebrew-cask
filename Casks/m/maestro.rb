cask "maestro" do
  arch arm:   "arm64",
       intel: on_system_conditional(macos: "x64", linux: "x86_64")
  name_prefix = on_system_conditional macos: "Maestro", linux: "maestro"
  url_end = on_system_conditional macos: "-mac.dmg", linux: ".AppImage"

  version "0.17.8"
  sha256 arm:          "0a29ee233c0fdeda4522790657f9cb6ebc6d350486f94b97976be046120baad2",
         intel:        "583038fad53e2849baafca02d5bce742911b1956c811fe85e2e56bb72fecacec",
         arm64_linux:  "55ea37d3486aa07bee0c1bc0af259b8d7be4c84a6703a547941b31a8cd4a843d",
         x86_64_linux: "35b73a335ac12701676b749cc4d0814bd9526b93af101fdfb78017cb6516c4e6"

  on_macos do
    depends_on macos: :monterey

    app "Maestro.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.maestro.app.sfl*",
      "~/Library/Application Support/maestro",
      "~/Library/Preferences/com.maestro.app.plist",
    ]
  end
  on_linux do
    app_image "maestro-#{version.csv.second || version.csv.first}-#{arch}.AppImage", target: "Maestro.AppImage"

    zap trash: "~/.config/maestro"
  end

  url "https://github.com/pedramamini/Maestro/releases/download/v#{version.csv.second || version.csv.first}/#{name_prefix}-#{version.csv.second || version.csv.first}-#{arch}#{url_end}"
  name "Maestro"
  desc "AI agent command center"
  homepage "https://runmaestro.ai/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-RC)?)/i)
    strategy :github_latest do |json, regex|
      version = json["name"]&.[](regex, 1)
      tag_version = json["tag_name"]&.[](regex, 1)
      next if version.blank? || tag_version.blank?

      (version == tag_version) ? tag_version : "#{version},#{tag_version}"
    end
  end

  auto_updates true
end
