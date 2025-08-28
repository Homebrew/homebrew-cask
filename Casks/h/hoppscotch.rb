cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.8.0-0"
  sha256 arm:   "31a42224e9cbbeb9afe43f7b7a617b3fb80e9f75a202ed14cfb797f2af46edca",
         intel: "a870314b010bd81bc3079ca708862b3f4fae367f8c4482f722f6710bde24b600"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch-selfhost"
  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
