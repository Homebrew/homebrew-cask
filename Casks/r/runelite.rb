cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.13"
  sha256 arm:   "480cbe9dc08a23c81088d44e53f08092892727d8a2b5e4f7c308891edc7912c8",
         intel: "609ddcd5cd951c43b8a4ea9db59b2589b093c41acc8da0191d1c985af437c1c9"

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
