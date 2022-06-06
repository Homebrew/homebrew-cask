cask "removebg" do
  version "1.4.5"
  sha256 "ca619f44218f82edc28a0e73a0bfbecca3f104257f0051d90192ada5335be981"

  url "https://static.remove.bg/download/removebg-for-mac-#{version}.dmg"
  name "remove.bg"
  desc "Automatic bulk background removal"
  homepage "https://www.remove.bg/"

  livecheck do
    url "https://www.remove.bg/windows-mac-linux/download"
    regex(%r{/removebg[._-]for[._-]mac[._-](\d+(?:\.\d+)+)\.dmg}i)
  end

  app "remove.bg.app"
end
