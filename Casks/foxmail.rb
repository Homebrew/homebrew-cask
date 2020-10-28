cask "foxmail" do
  version "1.4.0.94071"
  sha256 "dc5440507054d3140b830cbfb8f146435ae9570089e16e5dad4e5c82189619fe"

  # dldir1.qq.com/foxmail/MacFoxmail/ was verified as official when first introduced to the cask
  url "https://dldir1.qq.com/foxmail/MacFoxmail/Foxmail_for_Mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.foxmail.com/mac/download"
  name "Foxmail"
  desc "Email client"
  homepage "https://www.foxmail.com/"

  app "Foxmail.app"
end
