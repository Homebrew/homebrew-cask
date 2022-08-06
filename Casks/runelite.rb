cask "runelite" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  if Hardware::CPU.intel?
    version "2.4.4"
    sha256 "62f8a097ddbc6dffcee85c6e3b8b2f386b97395e878f575198dad1386df47c28"
  else
    version "2.4.4"
    sha256 "b233def430723a3f6b7229fefb2361a198aeafbdc485358295f1d662f97df766"
  end

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
