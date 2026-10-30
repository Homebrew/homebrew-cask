cask "genoffice" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.12.446"
  sha256 arm:          "277b2de8909484dd960131d373330f129e27654570fd6b405a041c3ec7c4390a",
         intel:        "4f22527b5eb944a8b733806a4336d0af5c90ac7f8b7bc60077f68c70c1814779",
         x86_64_linux: "07bec61731880e7e2811593303dafb62654e0ec0237ca0bc30e70abfdb880854"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "GenOffice.app"
    binary "#{appdir}/GenOffice.app/Contents/Resources/cli/genoffice"

    uninstall launchctl: "application.com.genoffice.app.*",
              quit:      "com.genoffice.app"

    zap trash: [
          "~/.genoffice",
          "~/.local/bin/genoffice",
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.genoffice.app.sfl*",
          "~/Library/Application Support/GenOffice",
          "~/Library/Preferences/com.genoffice.app.plist",
        ],
        rmdir: "~/Documents/GenOffice"
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "GenOffice-#{version}.AppImage", target: "GenOffice.AppImage"
  end

  url "https://github.com/genspark-ai/genoffice/releases/download/v#{version}/GenOffice-#{version}#{arch}.#{url_end}"
  name "GenOffice"
  desc "Open-source AI office suite"
  homepage "https://genoffice.ai/"
end
