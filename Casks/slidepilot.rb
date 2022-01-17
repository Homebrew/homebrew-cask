cask "slidepilot" do
  version "1.7.0"
  sha256 "22d7b17138893547cd2dca7fdb8cfeaa126bf813db871a3089c0865fe95462d1"

  url "https://slidepilotapp.com/updates/SlidePilot-#{version}.zip"
  name "SlidePilot"
  desc "PDF presentation tool"
  homepage "https://slidepilotapp.com/en"

  livecheck do
    url "https://slidepilotapp.com/updates/versions.xml"
    regex(/SlidePilot-(\d+(?:\.\d+)+)\.zip/i)
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
