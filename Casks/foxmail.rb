cask "foxmail" do
  version "1.4.3.94157"
  sha256 "98720bfae1b8efbf1ffcff62d75fd95451c15118bfa83897b0615fd4a5e67afc"

  # dldir1.qq.com/foxmail/MacFoxmail/ was verified as official when first introduced to the cask
  url "https://dldir1.qq.com/foxmail/MacFoxmail/Foxmail_for_Mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.foxmail.com/mac/download"
  name "Foxmail"
  desc "Email client"
  homepage "https://www.foxmail.com/"

  app "Foxmail.app"
end
