cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2025.3.44519"
  sha256 arm:   "d07eebedb4e9dbda405dc7d8132e1dc7ea4876cbdf8dbb4d70007160e163ac91",
         intel: "7f184037cbb8fed30bc7a8b4eb49bdbad5979d10af0d11892ba61d599036da5e"

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
