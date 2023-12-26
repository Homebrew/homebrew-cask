cask "polymc" do
  version "6.0"

  on_mojave :or_older do
    sha256 "a92feb9747b34e1ff17d5546e56a2919aa491c558fe20b8f211cd8cdb0897434"

    url "https://github.com/PolyMC/PolyMC/releases/download/#{version}/PolyMC-macOS-Legacy-#{version}.tar.gz",
        verified: "github.com/PolyMC/PolyMC/"
  end
  on_catalina :or_newer do
    sha256 "7fb72c2eef2900c90bc999062f85ed5e6faa60856bc7fa6e80e14c4bd4d4a61a"

    url "https://github.com/PolyMC/PolyMC/releases/download/#{version}/PolyMC-macOS-#{version}.tar.gz",
        verified: "github.com/PolyMC/PolyMC/"
  end

  name "PolyMC"
  desc "Minecraft launcher"
  homepage "https://polymc.org/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "PolyMC.app"

  zap trash: [
    "~/Library/Application Support/PolyMC/metacache",
    "~/Library/Application Support/PolyMC/PolyMC-*.log",
    "~/Library/Application Support/PolyMC/PolyMC.cfg",
    "~/Library/Preferences/org.PolyMC.PolyMC.plist",
    "~/Library/Saved Application State/org.PolyMC.PolyMC.savedState",
  ]
end
