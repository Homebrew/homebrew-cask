cask "mark-text" do
  version "0.22.0"
  sha256 arm:          "ae4756d8446867ee927e346bcb67f858539efabf72f7ade24996acb84416fb35",
         intel:        "b0c9567a747c3ec8b4ba7dde60ddf48af05cf231db6657001c6dd0fedfbcf514",
         x86_64_linux: "8e0913263939042a435f990cd4418c024354f5028f95ee02f7b0b4281e671fef"

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
