cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2024.2.29712"
  sha256 arm:   "d10a345d8c87fb57edf08c8d34a1984b2a414f463eb038d64d7b0faa929b4bb6",
         intel: "68f57577ef126484dbea3d778358780e68aed4266f805472b14245923a36c5a9"

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
