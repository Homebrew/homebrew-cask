cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2024.4.52410"
  sha256 arm:   "852491c53dd8bf3eb0163610f74496945e74ab7a776f807a25f8d9a22961231e",
         intel: "70fdb05425586d89418ab5a9aa79722e2d40ffd455d55e8c5c2354bf95a5930a"

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
