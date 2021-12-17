cask "runelite" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "2.2.0"

  if Hardware::CPU.intel?
    sha256 "0c6690000fb46eb1ff6d193a58ff3d7dc0e3514a03d0b1a22ca2351ef07e79c8"
  else
    sha256 "5f6f25d64bcf39e7d6cb742178ddc5365759d432add8ef8a31580a3e03322be0"
  end

  url "https://github.com/runelite/launcher/releases/download/#{version}/RuneLite-#{arch}.dmg",
      verified: "github.com/runelite/launcher/"
  name "RuneLite"
  desc "Client for Old School RuneScape"
  homepage "https://runelite.net/"

  livecheck do
    url "https://github.com/runelite/launcher/releases"
    strategy :page_match
    regex(%r{(\d+(?:\.\d+)+)/RuneLite-#{arch}\.dmg}i)
  end

  app "RuneLite.app"

  zap trash: [
    "~/jagex_cl_oldschool_LIVE.dat",
    "~/jagexcache/oldschool",
    "~/random.dat",
  ]
end
