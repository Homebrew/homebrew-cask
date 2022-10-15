cask "klogg" do
  version "22.06.0.1289"
  sha256 "e5df7722d0d851852dd9cc3449dd42d1fef3e74edda8c20dc04b38cb852b0fec"

  url "https://github.com/variar/klogg/releases/download/v#{version.major_minor}/klogg-#{version}-OSX-Qt5.dmg"
  name "Klogg"
  desc "Fast, advanced log explorer"
  homepage "https://github.com/variar/klogg"

  livecheck do
    url "https://github.com/variar/klogg/releases/latest"
    regex(%r{href=.*?/klogg-(\d+(?:\.\d+)*)-OSX-Qt5\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  app "klogg.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/klogg.wrapper.sh"
  binary shimscript, target: "klogg"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/klogg.app/Contents/MacOS/klogg' "$@"
    EOS
  end
end
