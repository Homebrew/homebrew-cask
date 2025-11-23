cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2025.3.45720"
  sha256 arm:   "09748527a33a20f0a9a097fe3800562245037bd9e8d4999ebb591436427f8274",
         intel: "92acb7d99b29157c1a2cd14d5730140a9a4f69479580b10a29f16a7d66ccbd41"

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
