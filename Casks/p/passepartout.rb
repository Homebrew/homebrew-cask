cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.5.12"
  sha256 arm:   "c7a2c4b273bcc0b80976d7195d54f181049d3a5e193b01fc028b721cab060d32",
         intel: "22e8d84b65feb500ccbb6d7d1dddebdfcb655e00d12a9e8b9ad79d5e6f41960d"

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
