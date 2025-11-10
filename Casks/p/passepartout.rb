cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.6.0"
  sha256 arm:   "dfa04044916bbd9c82e6f88a14495682b436d259335bd09b53f5e6d06bf99122",
         intel: "3bf2c4a597f19c76e20c3083c32ee2faebad487b0ec1c1e4b9e55e925a2e2c08"

  url "https://github.com/passepartoutvpn/passepartout/releases/download/v#{version}/Passepartout.#{arch}.dmg",
      verified: "github.com/passepartoutvpn/passepartout/"
  name "Passepartout"
  desc "OpenVPN and WireGuard client"
  homepage "https://passepartoutvpn.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Passepartout.app"

  zap trash: [
    "~/Library/Application Scripts/com.algoritmico.mac.Passepartout",
    "~/Library/Application Scripts/DTDYD63ZX9.group.com.algoritmico.Passepartout",
    "~/Library/Containers/com.algoritmico.mac.Passepartout",
    "~/Library/Group Containers/DTDYD63ZX9.group.com.algoritmico.Passepartout",
  ]
end
