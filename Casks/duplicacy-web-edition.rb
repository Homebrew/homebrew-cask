cask "duplicacy-web-edition" do
  version "1.4.1"
  sha256 "0b1fcf4a02338711321396d2e054f79a15e201278848fa37877c7166263308cd"

  # acrosync.com/duplicacy-web/ was verified as official when first introduced to the cask
  url "https://acrosync.com/duplicacy-web/duplicacy_web_osx_x64_#{version}.dmg"
  appcast "https://duplicacy.com/download.html"
  name "Duplicacy Web Edition"
  homepage "https://duplicacy.com/"

  app "Duplicacy Web Edition.app"

  zap trash: "~/.duplicacy-web"
end
