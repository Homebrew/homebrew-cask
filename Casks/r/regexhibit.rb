cask "regexhibit" do
  version "1.2"
  sha256 :no_check

  url "https://roger-jolly.nl/software/downloads/regexhibit/RegExhibit.zip"
  name "RegExhibit"
  desc "Perl regex assistant"
  homepage "https://roger-jolly.nl/software/#regexhibit"

  disable! date: "2024-07-16", because: "is 32-bit only"

  app "RegExhibit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jollyrogersoft.regexhibit.sfl*",
    "~/Library/Preferences/com.JollyRogerSoft.RegExhibit.plist",
  ]
end
