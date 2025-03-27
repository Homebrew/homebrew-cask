cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2025.1.13416"
  sha256 arm:   "d6ffca2255709369ce6c27cb1cb782536a54499f8bc803e1010fec0cbbc1a6c5",
         intel: "e4cdb69c7f65faec0315abc14ae90c26387a953a9687278a77f039f45495709f"

  url "https://github.com/MCreator/MCreator/releases/download/#{version}/MCreator.#{version.major_minor}.Mac.#{arch}.dmg",
      verified: "github.com/MCreator/MCreator/"
  name "MCreator"
  desc "Software used to make Minecraft Java Edition mods"
  homepage "https://mcreator.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "MCreator.app"

  zap trash: "~/.mcreator"
end
