cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2026.2.29418"
  sha256 arm:   "40db9d27533dd917fd83c6cabc7db97a70c083ef29454898643949513ed22ed4",
         intel: "ecdc047b09e5ad647ccba121d1b9547991fcea9014a9684415812bdda3ce30b1"

  url "https://github.com/MCreator/MCreator/releases/download/#{version}/MCreator.#{version.major_minor}.Mac.#{arch}.dmg",
      verified: "github.com/MCreator/MCreator/"
  name "MCreator"
  desc "Software used to make Minecraft Java Edition mods"
  homepage "https://mcreator.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "MCreator.app"

  zap trash: "~/.mcreator"
end
