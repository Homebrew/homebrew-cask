cask "leap-motion" do
  version "2.3.1,4184"
  sha256 "77e15a08f122f9fc88a0a3f032f0421f9993b8b7c24f5252b478db955d777cd6"

  url "https://warehouse.leapmotion.com/apps/#{version.after_comma}/download"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://warehouse.leapmotion.com/apps/4184/download"
  name "Leap Motion"
  homepage "https://www.leapmotion.com/setup"

  pkg "Leap Motion.pkg"

  uninstall script: "/Applications/Leap Motion.app/Contents/MacOS/uninstall"
end
