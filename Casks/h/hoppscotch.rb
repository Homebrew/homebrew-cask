cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.9.1-0"
  sha256 arm:   "995fe4fbd3601e9f5fc9cf22d2dadec286ef93715cbb82674687c7195edda7bd",
         intel: "e54319c379fb9483494967f448a9aec7bb3c2122869fe1a9a576cad6071b795b"

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
