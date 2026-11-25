cask "mark-text" do
  version "0.23.0"
  sha256 arm:          "d7e9ef4fc7c7f353003fc3f34d3a56514a8b05e19298a74ed6ce13c26fe2679f",
         intel:        "2f78980ea1c2fb7deea56a1fd61e97031457443be52631c09a1611cff5f71108",
         x86_64_linux: "40a2697337fecfa3c821469333c4b43fcbcbfdf711ea713643e638079a547cd8"

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
