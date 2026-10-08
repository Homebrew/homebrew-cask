cask "mark-text" do
  version "0.21.1"
  sha256 arm:          "329f608bbfc93d7bda33b6c570495d4d3aeffd33f5ed040ff764d1737189362c",
         intel:        "40bc50d4bf24f1f3cfdf2b81c47eae6d3b97c9c28c65fab149eac3e1eb3a6650",
         x86_64_linux: "b2986bed1415a215c5d0f8be378b5fb14f134d3c15c319d120eb254d28bf205f"

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
