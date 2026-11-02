cask "genoffice" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.12.600"
  sha256 arm:          "a0f3e688112b72ddaea49fcceda725b54861342d82f8f5d628b949c90ab58baa",
         intel:        "9ff61458c58fa0f98c239db5f3bc0022a50a10d9f62f213e4403d88f78582e07",
         x86_64_linux: "b1923333a4a1ebddc70635dfff888d0600461b17a87071711b1ee757364e58c9"

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
