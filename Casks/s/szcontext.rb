cask "szcontext" do
  version "1.4"
  sha256 "36d789b863b02a2ba8aa7e50aa248bfd93b478a40e560f33be717da5f1ab4efe"

  url "https://github.com/RoadToDream/SzContext/releases/download/#{version}/SzContext.dmg"
  name "SzContext"
  desc "Add context menu to Finder"
  homepage "https://github.com/RoadToDream/SzContext"

  depends_on macos: ">= :catalina"

  app "SzContext.app"

  zap trash: [
    "~/Library/Application Scripts/com.roadtodream.SzContext",
    "~/Library/Application Scripts/com.roadtodream.SzContext.SzContextFinderSyncExtension",
    "~/Library/Application Scripts/LQ3C7Y6F8J.com.roadtodream.SzContextXPCHelper",
    "~/Library/Containers/com.roadtodream.SzContext",
    "~/Library/Containers/com.roadtodream.SzContext.SzContextFinderSyncExtension",
    "~/Library/Containers/LQ3C7Y6F8J.com.roadtodream.SzContextXPCHelper",
    "~/Library/Group Containers/LQ3C7Y6F8J.com.roadtodream",
  ]
end
