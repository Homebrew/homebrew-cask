cask "dd-utility" do
  version "1.11"
  sha256 "1c33a998b7c9b7a9fa59222d2e7cc0410f0cec85650e8647308c33ee0af1e956"

  url "https://github.com/thefanclub/dd-utility/raw/master/DMG/ddUtility-#{version}.dmg"
  name "dd Utility"
  desc "Write and backup operating system IMG and ISO files"
  homepage "https://github.com/thefanclub/dd-utility"

  livecheck do
    url "https://github.com/thefanclub/dd-utility/tree/master/DMG"
    strategy :page_match
    regex(%r{href=.*?/ddUtility[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "dd Utility.app"
end
