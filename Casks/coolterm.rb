cask "coolterm" do
  version "1.9.0"
  sha256 :no_check

  url "https://freeware.the-meiers.org/CoolTermMac.zip"
  name "CoolTerm"
  desc "Serial port terminal"
  homepage "https://freeware.the-meiers.org/"

  livecheck do
    url "https://freeware.the-meiers.org/#CoolTerm"
    regex(/<center>([0-9\.]+)<br>05\/31\/2021<\/center>/i)
  end

  app "CoolTermMac/CoolTerm.app"
end
