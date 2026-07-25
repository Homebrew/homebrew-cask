cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.9.3"
  sha256 arm:   "0bb3e9b4f6593aa831fb4a132e967a254ef0fcc5d76ba71dd1e780ee729e1fba",
         intel: "f0b0645809c5907bae7ef08e76f4d2d8f6b8e503ee51015e7287da0abe2c4ac9"

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
