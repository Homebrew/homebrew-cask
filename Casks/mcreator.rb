cask "mcreator" do
  version "2020.5"
  sha256 "007ceb832b15ac77243282534c5de4f1c87e068fcc493c0a4469ad7f433a5d9a"

  url "https://mcreator.net/repository/#{version.dots_to_hyphens}/MCreator%20#{version}%20Mac%2064bit.dmg"
  appcast "https://mcreator.net/download"
  name "MCreator"
  homepage "https://mcreator.net/"

  app "MCreator.app"

  zap trash: "~/.mcreator"
end
