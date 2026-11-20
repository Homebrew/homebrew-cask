cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.8.1"
  sha256 arm:   "133f28126a528d851cc0688ebcf5ca3c4630a0f6ba00e834bbafed47b595577e",
         intel: "915c4d598a1972db789a2feaf188c34c5bcd89036d5ab5cd49f40c5a9902f230"

  url "https://github.com/runelite/launcher/releases/download/#{version}/RuneLite-#{arch}.dmg"
  name "RuneLite"
  desc "Client for Old School RuneScape"
  homepage "https://runelite.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/RuneLite[._-]#{arch}\.dmg}i)
  end

  depends_on :macos

  app "RuneLite.app"

  zap trash: [
    "~/.runelite",
    "~/jagex_cl_oldschool_LIVE.dat",
    "~/jagexcache/oldschool",
    "~/random.dat",
  ]
end
