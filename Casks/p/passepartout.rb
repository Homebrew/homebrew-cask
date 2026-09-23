cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.12.0"
  sha256 arm:   "4a874476bb3d22097fa30a205e5b1f3d1c393d7660cedc12123637c805128736",
         intel: "fc5b967e07f37f5c489508c6cb63b5cccb3969f0a6050e9b5240b5771efda752"

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
