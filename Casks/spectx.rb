cask "spectx" do
  version "1.4.53"
  sha256 "fa74d1bfbf4772fe3dc252c3432bf6edcaff6f5a671857f7c107415fa9925e7c"

  url "https://get.spectx.com/03f21b939e022/SpectXDesktop-v#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://go.spectx.com/get/?desktop-osx64"
  name "SpectX Desktop"
  desc "Parse and investigate raw log files"
  homepage "https://www.spectx.com/"

  app "SpectXDesktop.app"
end
