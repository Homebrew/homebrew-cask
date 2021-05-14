cask "mcreator" do
  version "2021.1"
  sha256 "05827fd0e2d52303a618ffaa254ee73af3e7c4c493e66dcec66b7659315f4ea5"

  url "https://mcreator.net/repository/#{version.dots_to_hyphens}/MCreator%20#{version}%20Mac%2064bit.dmg"
  name "MCreator"
  desc "Software used to make Minecraft Java Edition mods"
  homepage "https://mcreator.net/"

  livecheck do
    url "https://mcreator.net/download"
    strategy :page_match
    regex(/MCreator.*?(\d+(?:\.\d+)*)/i)
  end

  app "MCreator.app"

  zap trash: "~/.mcreator"
end
