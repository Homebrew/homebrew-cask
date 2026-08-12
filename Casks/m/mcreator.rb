cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2026.2.33218"
  sha256 arm:   "63e222b0f6844e56ac5b8b3b041dde7149facbd689bec374f306fb8880495a36",
         intel: "3242ac7c52b688464b42b5fe52846583efddd8a4475efe396061a9c0a6e67c2e"

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

  uninstall quit: "net.mcreator"

  zap trash: "~/.mcreator"
end
