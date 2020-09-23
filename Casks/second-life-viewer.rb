cask "second-life-viewer" do
  version "6.4.8.548890"
  sha256 "600b45422a9bebb38ea585062fe708e1db1727100ca3696a1833992a6c9cb437"

  url "http://download.cloud.secondlife.com/Viewer_#{version.major}/Second_Life_#{version.dots_to_underscores}_x86_64.dmg"
  appcast "https://secondlife.com/support/downloads/"
  name "Linden Lab Second Life Viewer"
  homepage "https://secondlife.com/"

  app "Second Life Viewer.app"

  zap trash: [
    "~/Library/Application Support/SecondLife",
    "~/Library/Caches/SecondLife",
  ]
end
