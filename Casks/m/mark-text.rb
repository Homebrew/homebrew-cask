cask "mark-text" do
  version "0.21.2"
  sha256 arm:          "6c07b697ba3262e8b130ab3ee85bdc621077cf4035c8cc339098cdb2892142c1",
         intel:        "597e09bd3d350e1535fb5df00e59e328fb618aac915e19db8e00ed6e4f2e800a",
         x86_64_linux: "78babe51c1c305dbfc2d61d0880919c20f48ca171663dbe1266932ed39bde09a"

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
