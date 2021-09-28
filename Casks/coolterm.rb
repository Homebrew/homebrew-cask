cask "coolterm" do
  version "1.9.0.3.1.948"
  sha256 :no_check

  url "https://freeware.the-meiers.org/CoolTermMac.zip"
  name "CoolTerm"
  desc "Serial port terminal"
  homepage "https://freeware.the-meiers.org/"

  livecheck do
    url "http://freeware.the-meiers.org/version/CoolTerm.ver"
    regex(/([0-9.]+)/i)
  end

  app "CoolTermMac/CoolTerm.app"
end
