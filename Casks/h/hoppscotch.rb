cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.5.4-0"
  sha256 arm:   "f101153ecb6a79f3445bdc57361bae95a2b3f5186564491929dcd02fd85dd13e",
         intel: "b6252d02e8ea466c3bdedd90e3085282c3be4cad9f3e1e11edea34c095a35f4c"

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
