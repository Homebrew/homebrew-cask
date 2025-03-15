cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.4"
  sha256 arm:   "6245cbaa87d4241e4fa5ff2ac29e058f76308294e8efeb507f2f9bd1c0ad846d",
         intel: "cfd0dfd9d47e0ddf5aa3012425536657c603e39ab39a10bd5aafbe1868d6395a"

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
