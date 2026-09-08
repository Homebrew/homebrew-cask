cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.11.1"
  sha256 arm:   "3ef6df1bb8129b4a4d60dc0d59f104d26f66f3d4b5eb8e27c112fdd0c9e27a29",
         intel: "4c6017ea32878d316df6ea6405c6cbbc2af466a84827dab8c6dfac36354d93dd"

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
