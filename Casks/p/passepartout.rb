cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.11.2"
  sha256 arm:   "534f0425d6e94e3fcb84464daefd11a042c57a20cae7ad2c442e30ed45646a25",
         intel: "d999b8cf20228aec5f2957a21084b873242cb50fc04fb1472f9d3fae7862d190"

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
