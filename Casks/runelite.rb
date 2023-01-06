cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.1"
  sha256 arm:   "d656ab0d2d6c7f9da082277c908b0e29ee04049582c86bf466224040fd545a45",
         intel: "a5528041951e98047be5e3ff217fbe912351d857db24b9ff065e2d5f42539b11"

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
