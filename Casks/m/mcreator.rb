cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2025.1.10519"
  sha256 arm:   "bf88e2a2a78e69ceb98c0c0aa5a7c32b96f0c1616728422e81607a2cc8ae02f7",
         intel: "0215f9086575986f2f5f737d824af703c1abf7d1b9da1e51d16036e473b8b20e"

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
