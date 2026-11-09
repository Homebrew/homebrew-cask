cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.12.4"
  sha256 arm:   "5f2091c71c88424ba6207984a5531b23490442e57531dcc57a4ec2f2b91b5f21",
         intel: "fd7dc41292963479d1ac52fcc6dd8f5530a01e867b549cb3b3be2ba5b056a617"

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
