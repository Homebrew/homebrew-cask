cask "mcreator" do
  version "2020.4"
  sha256 "80178e3399c768ec2dd444e895ffd03f9ebdef7eeb0627c57f44b0ee23350239"

  url "https://mcreator.net/repository/#{version.dots_to_hyphens}/MCreator%20#{version}%20Mac%2064bit.dmg"
  appcast "https://mcreator.net/download"
  name "MCreator"
  homepage "https://mcreator.net/"

  app "MCreator.app"

  zap trash: "~/.mcreator"
end
