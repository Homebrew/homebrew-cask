cask "soulseek" do
  version "2018-11-16"
  sha256 "fa147c9181bf2d263289a6c1067f7552009071d3d0bea927eca0e17f4e2ef066"

  url "https://www.slsknet.org/SoulseekQt/Mac/SoulseekQt-#{version}.dmg"
  name "Soulseek"
  homepage "https://www.slsknet.org/"

  livecheck do
    url "https://www.slsknet.org/news/node/1"
    strategy :page_match
    regex(%r{href=.*?/SoulseekQt-(\d+(?:-\d+)*)\.dmg}i)
  end

  app "SoulseekQt.app"
end
