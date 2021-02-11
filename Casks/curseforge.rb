cask "curseforge" do
  version "0.167.4-5"
  sha256 "491aa4424f6222b0c7dfc183e799b527ae59c189ff989d0e4257bd541f6fafb9"

  url "https://github.com/overwolf/curseforge-mac/releases/download/v#{version}/CurseForge-#{version}.dmg",
      verified: "github.com/overwolf/curseforge-mac/"
  name "CurseForge"
  desc "Download and manage your addons and mods"
  homepage "https://curseforge.overwolf.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CurseForge.app"

  uninstall launchctl: "com.overwolf.curseforge.ShipIt",
            quit:      "com.overwolf.curseforge"

  zap trash: [
    "~/Library/Application Support/Caches/curseforge-updater",
    "~/Library/Application Support/CurseForge",
  ]
end
