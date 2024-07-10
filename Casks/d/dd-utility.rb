cask "dd-utility" do
  version "1.11"
  sha256 "1c33a998b7c9b7a9fa59222d2e7cc0410f0cec85650e8647308c33ee0af1e956"

  url "https://github.com/thefanclub/dd-utility/raw/master/DMG/ddUtility-#{version}.dmg"
  name "dd Utility"
  desc "Write and backup operating system IMG and ISO files"
  homepage "https://github.com/thefanclub/dd-utility"

  livecheck do
    url "https://github.com/thefanclub/dd-utility/tree/master/DMG"
    regex(/ddUtility[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match
  end

  app "dd Utility.app"

  zap trash: "~/Library/Saved Application State/co.za.thefanclub.ddUtility.savedState"

  caveats do
    requires_rosetta
  end
end
