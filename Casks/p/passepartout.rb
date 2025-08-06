cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.5.8"
  sha256 arm:   "013c29cb7a3604416c1cddf7fc75f8fbbd52078aee578535aebe4d8b0bd0e471",
         intel: "7c8b8908ae820fae3b8b2a2a2fe435295f98febf35bcc270c6bce5b7142f9958"

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
