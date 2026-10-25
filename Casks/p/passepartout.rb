cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.12.3"
  sha256 arm:   "54d5ad4d5f4809c5f1c1457d9ba62e24443eedafeb8ad5d4edf5512fe92d4f98",
         intel: "530ca693d3d47c9e9e58e7bb5157f478875cab6fca3df53bd4eebae9f371bb3c"

  url "https://github.com/partout-io/passepartout/releases/download/v#{version}/Passepartout.#{arch}.dmg"
  name "Passepartout"
  desc "OpenVPN and WireGuard client"
  homepage "https://partout.io/passepartout/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Passepartout.app"

  uninstall quit: "com.algoritmico.mac.Passepartout"

  zap trash: [
    "~/Library/Application Scripts/com.algoritmico.mac.Passepartout",
    "~/Library/Application Scripts/DTDYD63ZX9.group.com.algoritmico.Passepartout",
    "~/Library/Containers/com.algoritmico.mac.Passepartout",
    "~/Library/Group Containers/DTDYD63ZX9.group.com.algoritmico.Passepartout",
  ]
end
