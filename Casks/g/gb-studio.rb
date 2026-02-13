cask "gb-studio" do
  arch arm: "apple-silicon", intel: "intel"

  version "4.2.0"
  sha256 arm:   "f9ae50c2380e3cd20a9823973e7d1a72f5024164f1cfeeb267f3fd31a34a6105",
         intel: "12ede8b20a175660d83f8a3b956b8c85492e058d756b26b4922ad8b2c93c2b1c"

  url "https://github.com/chrismaltby/gb-studio/releases/download/v#{version}/gb-studio-mac-#{arch}.zip",
      verified: "github.com/chrismaltby/gb-studio/"
  name "GB Studio"
  desc "Drag and drop retro game creator"
  homepage "https://www.gbstudio.dev/"

  app "GB Studio.app"

  zap trash: [
    "~/Library/Application Support/GB Studio",
    "~/Library/Preferences/dev.gbstudio.gbstudio.plist",
    "~/Library/Saved Application State/dev.gbstudio.gbstudio.savedState",
  ]
end
