cask "gb-studio" do
  arch arm: "apple-silicon", intel: "intel"

  version "4.3.2"
  sha256 arm:   "1b5e2c4402350223cf2810bd917a98025d85b350a48e449d1da3bb4486ff91eb",
         intel: "d56a850c7585f22c99b09d9c03af231fd76604a402b1f6c556979e72aefdba7c"

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
