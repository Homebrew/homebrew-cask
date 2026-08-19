cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.9.6"
  sha256 arm:   "3f872f248c0b51170f6724c27fae86cc94367f6f227f47bcdab72cbee8d44ecc",
         intel: "db2dbedce681aa3833468157ac04d82859e91ffd95f1dc8459d043a5a4d9a613"

  url "https://github.com/partout-io/passepartout/releases/download/v#{version}/Passepartout.#{arch}.dmg",
      verified: "github.com/partout-io/passepartout/"
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
