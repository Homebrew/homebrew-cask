cask "mcreator" do
  version "2022.3.45616"
  sha256 "3b70e9c417ac9f10e18b782e2a4c846417c37fe926bf831278de7e6d69e9fcd3"

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
