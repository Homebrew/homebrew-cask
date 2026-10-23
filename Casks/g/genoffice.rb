cask "genoffice" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.12.29"
  sha256 arm:          "c8edd7a1602a2930bc700946c4b00df24e0597966b664a76b34b4fa2a084c40a",
         intel:        "8aa2f0b3f86128547d1b1bf9e1b9596841acba17b851677c06a85f723f0ec027",
         x86_64_linux: "8d350c665470dd2242c42c69cb2b9d9e8fdb830e74ae1397bb00e0173a598b8d"

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
