cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.9.2"
  sha256 arm:   "ec1c2da6ee3064cccaeb5a9e62b7bfb7452b55dbdbbcf0a6a3e27d57c771e534",
         intel: "ae140433ace86f9482aa6877dbb9312ddaffb1e1ec2c86e5c1543cf258c0fb53"

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
