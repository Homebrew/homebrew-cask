cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.12.5"
  sha256 arm:   "3f8b0b99c7c30b439498b0fb13a8fff0cd441a25b5dbe5cb9a08359d7dd5bb5e",
         intel: "42bbae472e841d8d4de9c9c85817e64b9e0e1c5f6469f7253f2276816a751566"

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
