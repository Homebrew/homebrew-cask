cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2024.3.42716"
  sha256 arm:   "b7b9313ce9e9aa2eca99fd9b70356c7aba21858a722121252d6c179f230197b5",
         intel: "c9a8b18efc705e18e464b4207314f21207b13a3946ec91336d0d2fdd509535f8"

  url "https://github.com/MCreator/MCreator/releases/download/#{version}/MCreator.#{version.major_minor}.Mac.#{arch}.dmg",
      verified: "github.com/MCreator/MCreator/"
  name "MCreator"
  desc "Software used to make Minecraft Java Edition mods"
  homepage "https://mcreator.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MCreator.app"

  zap trash: "~/.mcreator"
end
