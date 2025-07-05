cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2025.2.27613"
  sha256 arm:   "29e0ad0300beb4a4ef5f907d6ff31daef29b2834335ce828f9d122e35cd6175d",
         intel: "953a75c47c8a6951b9b92af88e2f44762b7d9f22fd837e12100b0c8749acc731"

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
