cask "apptivate" do
  version "2.2.1"
  sha256 "06515419c235aab0a17961d5288233d6fee64f9f75905f5473f78e882b3c1cb2"

  url "http://www.apptivateapp.com/resources/Apptivate-#{version}.app.zip"
  name "Apptivate"
  desc "Create global hotkeys for your files and applications"
  homepage "http://www.apptivateapp.com/"

  # Artifact not available over HTTPS
  disable! date: "2025-12-23", because: :no_longer_meets_criteria

  app "Apptivate.app"

  zap trash: [
    "~/Library/Application Support/Apptivate",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/se.cocoabeans.apptivate.sfl*",
    "~/Library/Preferences/se.cocoabeans.apptivate.plist",
  ]

  caveats do
    requires_rosetta
  end
end
