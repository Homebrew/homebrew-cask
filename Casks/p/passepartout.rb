cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.6.11"
  sha256 arm:   "8aa103fcfbded63174f6f24b4f18c3e90d7bc3ab4d1f763aabe35eee30e1f876",
         intel: "1be1aab5559971f9dac9e7b1a46d4d2b1f6185ea1d116373185e3e43ae5e82df"

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
