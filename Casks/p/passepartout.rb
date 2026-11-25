cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.12.8"
  sha256 arm:   "9e15ed1d91fcb3500b76f815120ffe0b81c0c012a937f588dd629a4109aa1b38",
         intel: "1ba124649ed11ab912ab9b48c032c64687af751b8783c64bbb5a7f1a92b3dc95"

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
