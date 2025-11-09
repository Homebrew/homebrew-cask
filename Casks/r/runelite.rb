cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.6"
  sha256 arm:   "07887e4e7d6afb9124e8c31f33052f0790e26070e6e4d94480879b9112c3d3de",
         intel: "891c5f901cfbac06372da33b3113a42ff3b025371c73390b031fbccf6d8924f4"

  url "https://github.com/runelite/launcher/releases/download/#{version}/RuneLite-#{arch}.dmg",
      verified: "github.com/runelite/launcher/"
  name "RuneLite"
  desc "Client for Old School RuneScape"
  homepage "https://runelite.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/RuneLite[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "RuneLite.app"

  zap trash: [
    "~/.runelite",
    "~/jagex_cl_oldschool_LIVE.dat",
    "~/jagexcache/oldschool",
    "~/random.dat",
  ]
end
