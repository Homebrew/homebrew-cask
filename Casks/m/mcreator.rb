cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2026.1.14619"
  sha256 arm:   "e3b6c782238b718061990cf24d2855fbfe5d47a8726b911fbdd6a81da4a636e3",
         intel: "24298c7364647e40c842febd58e2128a285028fb4846e6a5840d4e61de94a4ec"

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
