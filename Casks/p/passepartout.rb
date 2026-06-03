cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.8.7"
  sha256 arm:   "283f23c2be11e5bf58a9fac73c85a2890a2fb7174beb9860f3ef584bfe356232",
         intel: "41893bacfbd333f4ff9bb1f737186194a1b8c8fed4735f11bb2a1b090f7d73d8"

  url "https://github.com/passepartoutvpn/passepartout/releases/download/v#{version}/Passepartout.#{arch}.dmg",
      verified: "github.com/passepartoutvpn/passepartout/"
  name "Passepartout"
  desc "OpenVPN and WireGuard client"
  homepage "https://passepartoutvpn.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Passepartout.app"

  zap trash: [
    "~/Library/Application Scripts/com.algoritmico.mac.Passepartout",
    "~/Library/Application Scripts/DTDYD63ZX9.group.com.algoritmico.Passepartout",
    "~/Library/Containers/com.algoritmico.mac.Passepartout",
    "~/Library/Group Containers/DTDYD63ZX9.group.com.algoritmico.Passepartout",
  ]
end
