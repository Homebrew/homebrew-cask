cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2026.1.13616"
  sha256 arm:   "a8819ed5b671a99305c1d1781ef275e44292af990889c7f016fb0699d80d24c0",
         intel: "3a4ddbc4a3b7532c2109d66f295549ba0790ef00d5f7e90034c72b3b7c0a886d"

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
