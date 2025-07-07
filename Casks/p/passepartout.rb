cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.5.3"
  sha256 arm:   "afbaab43cca79350f32c186c0d10477c1bbdbc5e7eefe5cc91ca4645db61ec73",
         intel: "e394a0b87b71bd0c7d7d31e86267f8451968f7db612c8e2ad0d3524b7fdd84b0"

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
