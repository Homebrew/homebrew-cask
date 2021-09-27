cask "coolterm" do
  version "1.9.0"
  sha256 :no_check

  url "https://freeware.the-meiers.org/CoolTermMac.zip"
  name "CoolTerm"
  desc "Serial port terminal"
  homepage "https://freeware.the-meiers.org/"

  livecheck do
    url "https://freeware.the-meiers.org/CoolTerm_ReadMe.txt.html"
    regex(%r{VERSION HISTORY.*\n=+(?:<br>|\n)+([0-9.]+):}i)
  end

  app "CoolTermMac/CoolTerm.app"
end
