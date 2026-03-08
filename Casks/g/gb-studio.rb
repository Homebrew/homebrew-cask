cask "gb-studio" do
  arch arm: "apple-silicon", intel: "intel"

  version "4.2.2"
  sha256 arm:   "766316c9242bea910d8562802336a83927fd491a4755915d963771f0cd057530",
         intel: "467176c93af928a20cae2e0258e7595f7eb9ffc9b14843b93716762d4da1bc50"

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
