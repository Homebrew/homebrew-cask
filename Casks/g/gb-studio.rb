cask "gb-studio" do
  arch arm: "apple-silicon", intel: "intel"

  version "4.3.1"
  sha256 arm:   "2aba6452646ec13659d500a2bcf51c075fe4d4573078d5c070cf7420408e3583",
         intel: "4ece95deb91eb332fcfb8c19b7d2e663b0114c5e7c646fb46ebd075435b38f6b"

  url "https://github.com/chrismaltby/gb-studio/releases/download/v#{version}/gb-studio-mac-#{arch}.zip",
      verified: "github.com/chrismaltby/gb-studio/"
  name "GB Studio"
  desc "Drag and drop retro game creator"
  homepage "https://www.gbstudio.dev/"

  depends_on :macos

  app "GB Studio.app"

  zap trash: [
    "~/Library/Application Support/GB Studio",
    "~/Library/Preferences/dev.gbstudio.gbstudio.plist",
    "~/Library/Saved Application State/dev.gbstudio.gbstudio.savedState",
  ]
end
