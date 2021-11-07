cask "slidepilot" do
  version "1.6.3"
  sha256 "7a1702e22a8794b1da1e5e91bfb8c67bdbe86ef4f03463cda7c5bb657716a490"

  url "https://slidepilotapp.com/updates/SlidePilot-#{version}.zip"
  name "SlidePilot"
  desc "PDF presentation tool"
  homepage "https://slidepilotapp.com/en"

  livecheck do
    url "https://slidepilotapp.com/updates/versions.xml"
    strategy :page_match
    regex(/SlidePilot-(\d+(?:\.\d+)*)\.zip/i)
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "SlidePilot.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.pascalbraband.slidepilot.sfl2",
    "~/Library/Caches/de.pascalbraband.SlidePilot",
    "~/Library/Preferences/de.pascalbraband.SlidePilot.document-configuration.plist",
    "~/Library/Preferences/de.pascalbraband.SlidePilot.plist",
  ]
end
