cask "sakurafrp" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.7"
  sha256 arm:   "74e3695c7379ac9501ef972510bd9be77b07155d3b8aea27fb615e9a3ec67c48",
         intel: "644b6f1337fae68e41db441a5d0392c21a089a0c939c3eecdaf1d4810b46d7d0"

  url "https://nya.globalslb.net/natfrp/client/launcher-macos/#{version}/SakuraLauncher_macOS_#{arch}.dmg",
      verified: "nya.globalslb.net/natfrp/client/launcher-macos/"
  name "SakuraLauncher"
  desc "Lanucher of SakuraFrp"
  homepage "https://www.natfrp.com/tunnel/download"

  livecheck do
    url "https://nya.globalslb.net/natfrp/client/launcher-macos/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SakuraLauncher.app"

  zap trash: [
    "~/Library/Containers/com.natfrp.launcher.ui",
    "~/Library/Application Scripts/com.natfrp.launcher.ui",
  ]
end
