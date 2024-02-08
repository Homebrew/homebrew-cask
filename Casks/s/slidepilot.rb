cask "slidepilot" do
  version "1.8.0"
  sha256 "bc8bf077a504cdb2d09d7adee313e408d40063e66e2c0d8722c6678e4ee5cc20"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.pascalbraband.slidepilot.sfl*",
    "~/Library/Caches/de.pascalbraband.SlidePilot",
    "~/Library/Preferences/de.pascalbraband.SlidePilot.document-configuration.plist",
    "~/Library/Preferences/de.pascalbraband.SlidePilot.plist",
  ]
end
