cask "removebg" do
  version "1.4.6"
  sha256 "aac64cb5211cf14ea09ee6f95ca404b3893c967e0710db3942e44963c1d35bc4"

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
