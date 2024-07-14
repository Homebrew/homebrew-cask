cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2024.2.28714"
  sha256 arm:   "82140c223287c204ea2a64942bc0e5d77a7caf3ec412d6196a8d48b9cdf1e5c1",
         intel: "4d4260732e3162e5d48f2f02f6d29f67d924c01c4f4ac84ca823dcf295dc7060"

  url "https://github.com/MCreator/MCreator/releases/download/#{version}/MCreator.#{version.major_minor}.Mac.#{arch}.dmg",
      verified: "github.com/MCreator/MCreator/"
  name "MCreator"
  desc "Software used to make Minecraft Java Edition mods"
  homepage "https://mcreator.net/"

  livecheck do
    url "https://mcreator.net/changelog"
    regex(/>v?(\d+(?:\.\d+)+)</i)
  end

  app "MCreator.app"

  zap trash: "~/.mcreator"
end
