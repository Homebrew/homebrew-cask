cask "regexhibit" do
  version "1.2"
  sha256 :no_check

  url "https://roger-jolly.nl/software/downloads/regexhibit/RegExhibit.zip"
  name "RegExhibit"
  desc "Perl regex assistant"
  homepage "https://roger-jolly.nl/software/#regexhibit"

  livecheck do
    url :homepage
    regex(/RegExhibit\s+(\d+(?:\.\d+)+)/i)
  end

  app "RegExhibit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jollyrogersoft.regexhibit.sfl*",
    "~/Library/Preferences/com.JollyRogerSoft.RegExhibit.plist",
  ]
end
