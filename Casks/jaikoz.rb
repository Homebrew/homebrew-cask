cask "jaikoz" do
  version "11.0.6,1.0"
  sha256 :no_check

  url "https://www.jthink.net/jaikoz/jsp/manualdownload/jaikoz-osx.dmg"
  name "Jaikoz"
  desc "Audio tag editor"
  homepage "https://www.jthink.net/jaikoz/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Jaikoz.app"
end
