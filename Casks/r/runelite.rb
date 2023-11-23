cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.11"
  sha256 arm:   "48c7baf3f5eedd8156d1fbf9bcd477de6157e6e7383b9e6182ca2eec2dfdab42",
         intel: "a9fb994d2a46a06fc225b5e534c0c9533343664145d89fb77513ee27af11698b"

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
