cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.12.2"
  sha256 arm:   "f7617f18297c7efacf21a6a24dea5d3de476890aee604b25a894dabd1f523445",
         intel: "c475f6fc472fbc8ec0819083188d310c9cacde7a4b3328c3a972cb3de83cb7fd"

  url "https://github.com/partout-io/passepartout/releases/download/v#{version}/Passepartout.#{arch}.dmg"
  name "Passepartout"
  desc "OpenVPN and WireGuard client"
  homepage "https://partout.io/passepartout/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Passepartout.app"

  uninstall quit: "com.algoritmico.mac.Passepartout"

  zap trash: [
    "~/Library/Application Scripts/com.algoritmico.mac.Passepartout",
    "~/Library/Application Scripts/DTDYD63ZX9.group.com.algoritmico.Passepartout",
    "~/Library/Containers/com.algoritmico.mac.Passepartout",
    "~/Library/Group Containers/DTDYD63ZX9.group.com.algoritmico.Passepartout",
  ]
end
