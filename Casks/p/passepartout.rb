cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.5.9"
  sha256 arm:   "239d7a6c8774f19e77b08aae1b17ed770fd2a370a207a32b5d75aca83d6e5c5c",
         intel: "fbcad01d47fda56e9b2dfa055882a7aad31148b51dd8e28e0695a832937b0fab"

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
