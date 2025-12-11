cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.11.2-0"
  sha256 arm:   "5c93684ab9a79526a3cc26a169cf7e22c436708902885d2c1af74c28a4f6998c",
         intel: "71f3d60bf985fca0938484499462e9cff2f966c23e3f46c8d0e67b6cbd5da1f8"

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
