cask "removebg" do
  version "1.4.4"
  sha256 "65e72720bf38f28368b35a1b3ebeb11c162717013484700d79578357ce241253"

  url "https://static.remove.bg/download/removebg-for-mac-#{version}.dmg"
  name "remove.bg"
  desc "Automatic bulk background removal"
  homepage "https://www.remove.bg/"

  livecheck do
    url "https://www.remove.bg/windows-mac-linux/download"
    regex(%r{/removebg[._-]for[._-]mac[._-](\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :yosemite"

  app "remove.bg.app"
end
