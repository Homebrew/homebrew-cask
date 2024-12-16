cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2024.4.51119"
  sha256 arm:   "bf66a76657025aceda060f00825e4c45fe2582f42140cd334c20fd7c4abfac3a",
         intel: "82c80e12a877ccf2f88c1d46e0ec7e9efecf27aa7f56ba726050c3785db6d7f7"

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
