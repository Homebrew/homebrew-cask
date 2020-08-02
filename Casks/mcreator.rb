cask "mcreator" do
  version "2020.4"
  sha256 "5e90742782d1e787261b8e2e42e1de1b95fb648aa2a46f2c392c72525a61beb0"

  url "https://mcreator.net/repository/#{version.dots_to_hyphens}/MCreator%20#{version}%20Mac%2064bit.dmg"
  appcast "https://mcreator.net/changelog"
  name "MCreator"
  homepage "https://mcreator.net/"

  app "MCreator.app"

  zap trash: "~/.mcreator"
end
