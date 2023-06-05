cask "soulseek" do
  version "2023-1-15"
  sha256 "e12a87fe695288446ba67d36bf0b4bbb7098497e973d9883199c6c5c332d4df2"

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
