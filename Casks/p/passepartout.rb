cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.6.4"
  sha256 arm:   "ee29003a8db5ded6b24fc08bc53f452efbb1e06c8d33b62cdd4bb78dc0b0e6a1",
         intel: "fa6c9bacccb9104972a9a79e56925d7cdf1ebc58d3a2b731e8c9b1a97ee93b85"

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
