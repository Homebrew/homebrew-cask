cask "foxmail" do
  version "1.4.3.94164"
  sha256 "cd91e5e96851815d11c1d97752fe5eb1ce0fdb908f55de90929344134d1e649a"

  # dldir1.qq.com/foxmail/MacFoxmail/ was verified as official when first introduced to the cask
  url "https://dldir1.qq.com/foxmail/MacFoxmail/Foxmail_for_Mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.foxmail.com/mac/download"
  name "Foxmail"
  desc "Email client"
  homepage "https://www.foxmail.com/"

  app "Foxmail.app"
end
