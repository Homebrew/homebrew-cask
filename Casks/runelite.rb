cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.2"
  sha256 arm:   "650a911be9f855d5c1b53a2fbedd001bc1b598143ab820096002102db53c5d98",
         intel: "1f0ba0a5f2f84650d8cdc9e172e4bf91761cd7adf63f411ba1927e885b1c0773"

  url "https://github.com/runelite/launcher/releases/download/#{version}/RuneLite-#{arch}.dmg",
      verified: "github.com/runelite/launcher/"
  name "RuneLite"
  desc "Client for Old School RuneScape"
  homepage "https://runelite.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/RuneLite[._-]#{arch}\.dmg}i)
  end

  app "RuneLite.app"

  zap trash: [
    "~/.runelite",
    "~/jagex_cl_oldschool_LIVE.dat",
    "~/jagexcache/oldschool",
    "~/random.dat",
  ]
end
