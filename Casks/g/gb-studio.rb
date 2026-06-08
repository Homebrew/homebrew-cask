cask "gb-studio" do
  arch arm: "apple-silicon", intel: "intel"

  version "4.3.0"
  sha256 arm:   "1cdf66da6c279410c111468c4feeba8d148982c047b74f7304e76ed4ba295f67",
         intel: "b018c1b9ff672b809a46a5bc1107a30d8e3de4c97f7cf9816994a8d1b713329b"

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
