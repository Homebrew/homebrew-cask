cask "mcreator" do
  version "2023.1.10219"
  sha256 "7537a8356d959a322a97e86db4d1bfba5609da593f8870bab485fd2006875028"

  url "https://github.com/MCreator/MCreator/releases/download/#{version}/MCreator.#{version.major_minor}.Mac.64bit.dmg",
      verified: "github.com/MCreator/MCreator/"
  name "MCreator"
  desc "Software used to make Minecraft Java Edition mods"
  homepage "https://mcreator.net/"

  livecheck do
    url "https://mcreator.net/changelog/"
    regex(/>v?(\d+(?:\.\d+)+)</i)
  end

  app "MCreator.app"

  zap trash: "~/.mcreator"
end
