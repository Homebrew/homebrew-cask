cask "runelite" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "2.4.0"

  if Hardware::CPU.intel?
    sha256 "c547f1e9be49b0403517498c50120209c19bd49e6f47753c056892082a1545c4"
  else
    sha256 "18fe12a44953b57222e8ad05cfecb889373cede2aa357820ba00b6599e10f3cb"
  end

  url "https://github.com/runelite/launcher/releases/download/#{version}/RuneLite-#{arch}.dmg",
      verified: "github.com/runelite/launcher/"
  name "RuneLite"
  desc "Client for Old School RuneScape"
  homepage "https://runelite.net/"

  livecheck do
    url "https://github.com/runelite/launcher/releases"
    strategy :page_match
    regex(%r{v?(\d+(?:\.\d+)+)/RuneLite[._-]#{arch}\.dmg}i)
  end

  app "RuneLite.app"

  zap trash: [
    "~/.runelite",
    "~/jagex_cl_oldschool_LIVE.dat",
    "~/jagexcache/oldschool",
    "~/random.dat",
  ]
end
