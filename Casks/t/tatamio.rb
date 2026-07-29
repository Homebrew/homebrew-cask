cask "tatamio" do
  version "0.12.2"
  sha256 "23fba937c7782ed476dc4201498ea5997a722d9b378768ecd55784c46841cbce"

  url "https://tatamio.app/downloads/Tatamio-#{version}.dmg"
  name "Tatamio"
  desc "Tiling window manager with snap zones, workspaces and a screen-share portal"
  homepage "https://tatamio.app/"

  livecheck do
    url "https://tatamio.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Tatamio.app"

  zap trash: [
    "~/.tatami",
    "~/.tatamio",
    "~/Library/Application Support/app.tatamio",
  ]
end
