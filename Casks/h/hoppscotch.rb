cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.10.1-0"
  sha256 arm:   "10578dd38b54ee53d70a5e8106a63bc24f512111464e98089831b08208090389",
         intel: "4c7259fa6f0cb76d5af510ccf9f136787a23e4135f549b8f2aa51afe9af7bc32"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch-selfhost"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
