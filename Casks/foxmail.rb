cask "foxmail" do
  version "1.4.3.94167"
  sha256 "a1580a0d2845205dc41222a2623ac7b436f41501455fab16bfc7da4fea5bd1aa"

  # dldir1.qq.com/foxmail/MacFoxmail/ was verified as official when first introduced to the cask
  url "https://dldir1.qq.com/foxmail/MacFoxmail/Foxmail_for_Mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.foxmail.com/mac/download"
  name "Foxmail"
  desc "Email client"
  homepage "https://www.foxmail.com/"

  app "Foxmail.app"
end
