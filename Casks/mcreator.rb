cask "mcreator" do
  version "2020.5"
  sha256 "370b1669fb8a9a596c47cb23d315a2b7241b22bb46482e4deba00a5c61ea3a44"

  url "https://mcreator.net/repository/#{version.dots_to_hyphens}/MCreator%20#{version}%20Mac%2064bit.dmg"
  appcast "https://mcreator.net/download"
  name "MCreator"
  homepage "https://mcreator.net/"

  app "MCreator.app"

  zap trash: "~/.mcreator"
end
