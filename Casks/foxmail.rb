cask "foxmail" do
  version "1.4.3.94169"
  sha256 "e9821bd3d3b9ed3b46ca7a8195a51c4d53fdc5877adc3916dbb37734165a0008"

  # dldir1.qq.com/foxmail/MacFoxmail/ was verified as official when first introduced to the cask
  url "https://dldir1.qq.com/foxmail/MacFoxmail/Foxmail_for_Mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.foxmail.com/mac/download"
  name "Foxmail"
  desc "Email client"
  homepage "https://www.foxmail.com/"

  app "Foxmail.app"
end
