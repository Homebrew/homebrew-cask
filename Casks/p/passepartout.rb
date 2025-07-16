cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.5.4"
  sha256 arm:   "a4a9ddcd86ccb4c6a7fe4617eeb44647a037f44a13954bbfd1af34f0f937595d",
         intel: "0981afd3de232d867fae12fa8f701dbdfa6a0f99cc9991921835d76c566316ef"

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
