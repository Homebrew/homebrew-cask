cask "soulseek" do
  version "2021-2-6"
  sha256 "8ff0437676f65779e7370478a2de1274a29607c764317ffb13ce697f2373b443"

  url "https://www.slsknet.org/SoulseekQt/Mac/SoulseekQt-#{version}.dmg"
  name "Soulseek"
  desc "File sharing network"
  homepage "https://www.slsknet.org/"

  livecheck do
    url "https://www.slsknet.org/news/node/1"
    regex(%r{href=.*?/SoulseekQt[._-]v?(\d+(?:-\d+)+)\.dmg}i)
  end

  app "SoulseekQt.app"
end
