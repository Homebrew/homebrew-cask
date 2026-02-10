cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.6.7"
  sha256 arm:   "82a9bee3ba82d97688b31d69b410d158ad73c317e24e9057891274eacdfdcace",
         intel: "b5b3e6aa7657b6c5b4fb015375f17e48d63de15772ccab9f19ca07cfae1555b1"

  url "https://github.com/passepartoutvpn/passepartout/releases/download/v#{version}/Passepartout.#{arch}.dmg",
      verified: "github.com/passepartoutvpn/passepartout/"
  name "Passepartout"
  desc "OpenVPN and WireGuard client"
  homepage "https://passepartoutvpn.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Passepartout.app"

  zap trash: [
    "~/Library/Application Scripts/com.algoritmico.mac.Passepartout",
    "~/Library/Application Scripts/DTDYD63ZX9.group.com.algoritmico.Passepartout",
    "~/Library/Containers/com.algoritmico.mac.Passepartout",
    "~/Library/Group Containers/DTDYD63ZX9.group.com.algoritmico.Passepartout",
  ]
end
