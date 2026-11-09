cask "oleafly" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.4.11"
  sha256 arm:          "3f8111fb69f1f9dd31ef3cc8ec33df01f936afe18a5fa57508b42b07373e5c19",
         intel:        "5ffa30a65be329651459334e85242cff8a429527899ed66bd6cbf3c12e619501",
         arm64_linux:  "0c62d2d4dc27889a5244c3680d0f8c87f94e6ba5468efec731a14b3407535146",
         x86_64_linux: "809e8e6fb462d8428de5bd94e71bfb662d0066a201179f5d4af2f8b92aaad390"

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
