cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.5.18"
  sha256 arm:   "2ea918039e8774c63e6d8eb22d61f2aaeceeea4718a05ad398a6c8c55c0a050c",
         intel: "daf4593a2636924b777b086d9e974c6e473b6a6215cd5ec5b3de8bad15d9965d"

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
