cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2026.2.30420"
  sha256 arm:   "4d48ece91d43a4575e27e7f663f457c8588e0c80bf492981833134398e669f15",
         intel: "9d7c3a0955fbb9d7b54f6d9bb52c48f2d6283ad0cd580d52a3af92f634bafda7"

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
