cask "ampps" do
  version "3.9"
  sha256 "7395bdcb3958cef4c3274cc1c6c68444104e6e464f692a76b61ead878236ec7d"

  url "https://files.ampps.com/AMPPS-#{version}.dmg"
  name "AMPPS"
  desc "Software stack for website development"
  homepage "https://www.ampps.com/"

  livecheck do
    url "https://www.ampps.com/downloads"
    regex(%r{href=.*?/AMPPS-(\d+(?:\.\d+)+)-x86_64\.dmg}i)
  end

  suite "AMPPS"

  uninstall_preflight do
    set_permissions "#{appdir}/AMPPS", "0777"
  end
end
