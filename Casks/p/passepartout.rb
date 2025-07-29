cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.5.6"
  sha256 arm:   "ee9a785a82840dc049a8a8c44ca0a6aa8a45dc9751c3db26a06e4b0ba56e1dda",
         intel: "eca9ad1518dccaf8fda65c36b72db3b2e1c69d99344403a9ba6032264f154604"

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
