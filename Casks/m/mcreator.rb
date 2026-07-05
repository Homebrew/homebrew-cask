cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2026.2.27711"
  sha256 arm:   "c7911e68bd31de2b611e0b270f8678ad60fb9723bb43b2ba6fec7e90bf60e679",
         intel: "0b0508c77a9265bc2be3c56ac938a1d9549a2d4f26f65416163a950480b2b41b"

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
