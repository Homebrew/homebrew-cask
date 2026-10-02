cask "mark-text" do
  version "0.20.0"
  sha256 arm:          "c9580e5541ad4efd92c013ec48bb277905773c70f041b14aadbad62d7321b9a3",
         intel:        "f54dd6e0bc53d8d6e5b0c741ed0f6fdb8f270dca2cb13a6865c1ea8cdfda7a91",
         x86_64_linux: "970c332822d217dad1667fab45f7c2e22ae0265c17cf9120138eebb3dc98622e"

  on_macos do
    arch arm: "arm64", intel: "x64"

    url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-mac-#{arch}-#{version}.dmg"

    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    depends_on macos: :monterey

    app "MarkText.app"

    zap trash: [
      "~/Library/Application Support/marktext",
      "~/Library/Logs/marktext",
      "~/Library/Preferences/com.github.marktext.marktext.plist",
      "~/Library/Saved Application State/com.github.marktext.marktext.savedState",
    ]
  end
  on_linux do
    url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-linux-#{version}.AppImage"

    depends_on arch: :x86_64

    app_image "marktext-linux-#{version}.AppImage", target: "MarkText.AppImage"

    zap trash: [
      "~/.cache/marktext",
      "~/.config/marktext",
    ]
  end

  name "MarkText"
  desc "Markdown editor"
  homepage "https://github.com/marktext/marktext"

  auto_updates true
end
