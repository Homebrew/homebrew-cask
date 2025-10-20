cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.5.16"
  sha256 arm:   "7909529c3ecea6d600d4b67830c095d3be577c1630cbd72108e3aafd2cf772f1",
         intel: "1fdeef40ea1ebf0e7ba25129151b2105228ace0c2eb1913f7d50a6c4ee34c1b3"

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
