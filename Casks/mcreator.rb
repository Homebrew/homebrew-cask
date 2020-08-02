cask "mcreator" do
  version "2020.4"
  sha256 "56fbe20957efe85568d2b84db913387ed6fa1402398defdf376631ac775016a2"

  url "https://mcreator.net/repository/#{version.dots_to_hyphens}/MCreator%20#{version}%20Mac%2064bit.dmg"
  appcast "https://mcreator.net/changelog"
  name "MCreator"
  homepage "https://mcreator.net/"

  app "MCreator.app"

  zap trash: "~/.mcreator"
end
