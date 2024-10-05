cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2024.3.40615"
  sha256 arm:   "b76c983a99cc2a1c5d548b3ade14b421c3089ac2342ed318665fff1483a0d465",
         intel: "aca4aca6376cbfcf2669e2574a2d8bc8080f04f7fbe6f7eb79a2858d97e530c7"

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
