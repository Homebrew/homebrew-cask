cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.8.5"
  sha256 arm:   "59d2aeeadd58a080cd3e3f7c03d7219f0ee4921aac45d29ccf727ba84bef876f",
         intel: "27a747c50f3407ca1e8203b0889e0a131facd57fb5d8224eaf1a136873b139cb"

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
