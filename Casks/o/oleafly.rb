cask "oleafly" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.4.13"
  sha256 arm:          "0e97442c04b887deef54330779ac9cf98c1c7274003741caa2c77726a944567c",
         intel:        "236440a92cb273bc44c1c02b4a07242be2184c7a391157d5c0662cb035c35655",
         arm64_linux:  "66fbb3a9b8f5d29b487518f75749d2a5be0766e52805e030c26e0fe13a48f793",
         x86_64_linux: "25bad5a2c30f93f4a6ff7f78d0c5b682c52cf058f0bfb1d69768e55fab796a73"

  on_macos do
    app "Oleafly.app"
    binary "#{appdir}/Oleafly.app/Contents/MacOS/oleafly-cli", target: "oleafly"

    zap trash: [
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.oleafly.app.sfl*",
          "~/Library/Application Support/com.oleafly.app",
          "~/Library/Caches/com.oleafly.app",
          "~/Library/HTTPStorages/com.oleafly.app",
          "~/Library/Preferences/com.oleafly.app.plist",
          "~/Library/Saved Application State/com.oleafly.app.savedState",
          "~/Library/WebKit/com.oleafly.app",
        ],
        rmdir: "~/.oleafly"
  end
  on_linux do
    app_image "Oleafly_#{version}_#{arch}.AppImage", target: "Oleafly.AppImage"

    zap trash: [
      "~/.local/share/applications/oleafly-desktop-handler.desktop",
      "~/.local/share/com.oleafly.app",
    ]
  end

  url "https://github.com/Oleafly/Oleafly/releases/download/v#{version}/Oleafly_#{version}_#{arch}.#{url_end}"
  name "Oleafly"
  desc "LaTeX, Typst and Markdown editor for research writing"
  homepage "https://oleafly.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
end
