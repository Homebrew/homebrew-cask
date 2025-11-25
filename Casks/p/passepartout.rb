cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.6.2"
  sha256 arm:   "9d894ba952ad0a70844006bad2a9eb7d1b7297669e62f30043376d837d8fcfb0",
         intel: "918a7bcfdf9c69b508e69f292fd473a950e1f0b60495e8f60b33f004c65dee0e"

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
