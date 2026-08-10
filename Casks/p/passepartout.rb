cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.9.5"
  sha256 arm:   "f860801929159f87573738c0595c5e75aa4850ec0dc232b211444c84065a461e",
         intel: "a1fa47992ab3e7e9de68e676e71830d63d5ae16bc5e384b3f70091e73bf44943"

  url "https://github.com/partout-io/passepartout/releases/download/v#{version}/Passepartout.#{arch}.dmg",
      verified: "github.com/partout-io/passepartout/"
  name "Passepartout"
  desc "OpenVPN and WireGuard client"
  homepage "https://partout.io/passepartout/"

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
