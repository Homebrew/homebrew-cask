cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2026.2.33518"
  sha256 arm:   "e4750f18a4a0b3f26cdf10e5fae338b373acdcb1e8b6906db5bbae37ee328c62",
         intel: "58b1d9ad9bfa356ddfab139f92c749227dab235195c10dce0e355878c61a7c77"

  url "https://github.com/MCreator/MCreator/releases/download/#{version}/MCreator.#{version.major_minor}.Mac.#{arch}.dmg"
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
