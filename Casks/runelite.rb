cask "runelite" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "2.3.0"

  if Hardware::CPU.intel?
    sha256 "ff360de37696de98230883baec01d0ac76cb0d6e817f2747a9cdb178a30ac8bf"
  else
    sha256 "4ab78485a19f4e719355e798098a77cdb8fb1fd27a3916e0957c04bb03270be7"
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
    "~/.runelite",
  ]
end
