cask "genoffice" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.12.852"
  sha256 arm:          "7724ead484688d4bc061dbdfdf1326340b7fb8101c796d2760b2baf63721f52b",
         intel:        "5b7404ac401e64592fb8d84cb54ec3282dcf0f61cd33b5d2855cebd2b9f32365",
         x86_64_linux: "824e2d75f2eb5d1851dc502e9224c1d44b020dbcf626577473993b31d60c7fde"

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

    zap trash: [
          "~/.config/GenOffice",
          "~/.genoffice",
          "~/.local/bin/genoffice",
        ],
        rmdir: "~/Documents/GenOffice"
  end

  url "https://github.com/genspark-ai/genoffice/releases/download/v#{version}/GenOffice-#{version}#{arch}.#{url_end}"
  name "GenOffice"
  desc "Open-source AI office suite"
  homepage "https://genoffice.ai/"
end
