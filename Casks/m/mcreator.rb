cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2024.2.32117"
  sha256 arm:   "684baf2fa1656d9e3e3dd6e3c18251e3ee9f807bbc68dcf448bf454b5a5a3d2b",
         intel: "0f04b4728c22616f66951956ec070c17069e8ee827c3fdfc6d5e1d8c81c2ccd3"

  url "https://github.com/MCreator/MCreator/releases/download/#{version}/MCreator.#{version.major_minor}.Mac.#{arch}.dmg",
      verified: "github.com/MCreator/MCreator/"
  name "MCreator"
  desc "Software used to make Minecraft Java Edition mods"
  homepage "https://mcreator.net/"

  livecheck do
    url "https://mcreator.net/changelog"
    regex(/>v?(\d+(?:\.\d+)+)</i)
  end

  app "MCreator.app"

  zap trash: "~/.mcreator"
end
