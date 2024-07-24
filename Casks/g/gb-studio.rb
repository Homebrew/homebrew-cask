cask "gb-studio" do
  arch arm: "apple-silicon", intel: "intel"

  version "4.0.1"
  sha256 arm:   "2972d44440ff4f90a652c6f0941c65218f5c42c8066bfe7b3bce156fece29b5f",
         intel: "3feb11309fed3676efd8c2879ec18c6cd719623dc7826e0193a36bc1817f0f09"

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
