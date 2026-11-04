cask "oleafly" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.4.10"
  sha256 arm:          "57271d33c8e51c7cc42d48de5f5d0c786423660c7dc63c0df0bfd381dd48a18a",
         intel:        "ce4db1eb324793f8bda0e96fb3d9048f176f233ace1f29269b206ee4cd6534db",
         arm64_linux:  "56b1e217045a1f425ffa2e7c28fd2c51a2fd199bcbe2928db2c30bdb6592512d",
         x86_64_linux: "d01703ab0f951745b5144d50663e77d4941367449e9edc6fcc0b2fc07bb9eb07"

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
    ]
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
