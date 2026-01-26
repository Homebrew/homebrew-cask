cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.6.6"
  sha256 arm:   "469d94ddbcd28904a81a22f8d3b5cc77c7400a49b3d9700d790d9ca783d8407e",
         intel: "eaaa2d631d04eb05febee2b9a39f1ea151ec74a49adf78c6c2fc0ae87b242862"

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
