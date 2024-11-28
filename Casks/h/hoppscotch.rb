cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.11.0-0"
  sha256 arm:   "32f2da01447370d906fa41c588c6fbbe58ae7093b37ea537b247941968a22816",
         intel: "d8b96c0608aed8b5a42bcf95013ec5bd9d583c3b4d95afadf180d917419a9712"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
