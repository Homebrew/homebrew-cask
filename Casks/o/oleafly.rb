cask "oleafly" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.4.12"
  sha256 arm:          "d0d353381f4bd9c42d6dda3944de3aca9dbe4aa9d02e7eb66bfc713a69ee342c",
         intel:        "6a85a51ef4d49e72281c8224abe174a8c66f29741a68b43bf283f9768f31fecd",
         arm64_linux:  "84039732c0cd7b60abd1c3570ccc4b9e6d89bb988ede3a661b2f3c682df59a8c",
         x86_64_linux: "c4cf1960a6dc7c4518667e96e90106230be136debfead89d4ad278fb22e556a7"

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
