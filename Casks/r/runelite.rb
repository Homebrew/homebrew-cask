cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "ab1ff4b62998dfcdca740dee08bf199f33cbcbfba57718803a66354722cf8c04",
         intel: "cffce9ea15ec8a28779007b626a0b324016bf181bef338f81a8a6d63d81b1f56"

  url "https://github.com/runelite/launcher/releases/download/#{version}/RuneLite-#{arch}.dmg",
      verified: "github.com/runelite/launcher/"
  name "RuneLite"
  desc "Client for Old School RuneScape"
  homepage "https://runelite.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/RuneLite[._-]#{arch}\.dmg}i)
  end

  depends_on macos: :big_sur

  app "RuneLite.app"

  zap trash: [
    "~/.runelite",
    "~/jagex_cl_oldschool_LIVE.dat",
    "~/jagexcache/oldschool",
    "~/random.dat",
  ]
end
