cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.11.0"
  sha256 arm:   "94bffbf9d864e41f5890f26c1529b71fae451c0fd129df74fd2da1ffca370ee4",
         intel: "619346bf65776899de636525ae08ea2c67882905c61201ea36042422ef13ebff"

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

  uninstall quit: "com.algoritmico.mac.Passepartout"

  zap trash: [
    "~/Library/Application Scripts/com.algoritmico.mac.Passepartout",
    "~/Library/Application Scripts/DTDYD63ZX9.group.com.algoritmico.Passepartout",
    "~/Library/Containers/com.algoritmico.mac.Passepartout",
    "~/Library/Group Containers/DTDYD63ZX9.group.com.algoritmico.Passepartout",
  ]
end
