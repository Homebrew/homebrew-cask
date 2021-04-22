cask "slidepilot" do
  version "1.6.2"
  sha256 "c07fe39b99e60a1c336ba038edb387ca51495da1acd7f7911cce3bb02553d1fc"

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
