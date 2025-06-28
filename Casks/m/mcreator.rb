cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2025.2.26612"
  sha256 arm:   "10113c83388b9df45c7da929352f8110b1954189a0095c44ba1196dbaf90f15b",
         intel: "5eee72d9372031769215faa3aa10ca64faac83f4c6f6c5cf2f5a3d04bfd935b2"

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
