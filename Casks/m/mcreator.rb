cask "mcreator" do
  version "2024.1.15713"
  sha256 "d67440807f91b6afc1f4f7f0693a28314bcd41eb7d0b1855bb5a5f88d5b81c1a"

  url "https://github.com/MCreator/MCreator/releases/download/#{version}/MCreator.#{version.major_minor}.Mac.64bit.dmg",
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
