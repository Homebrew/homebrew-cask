cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.7.0"
  sha256 arm:   "e3b879a49ac9d432d31bd491e663fbe28ded38bbec71ebc7692b493906d7ee3f",
         intel: "0d3d52b8df2b7405138e9ef27bfca20c4a4060674b62c0e2541ff0d17b2ef2da"

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
