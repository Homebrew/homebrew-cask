cask "lofi" do
  version "2.0.2"
  sha256 "a954c06e72c0076c20186f86161287147f815153cb22311fe2e3e39bfbc676fe"

  url "https://github.com/dvx/lofi/releases/download/v#{version}/lofi.dmg",
      verified: "github.com/dvx/lofi/"
  name "Lofi"
  desc "Spotify player with WebGL visualisations"
  homepage "https://www.lofi.rocks/"

  depends_on macos: ">= :high_sierra"

  app "lofi.app"

  zap trash: [
    "~/Library/Application Support/lofi",
    "~/Library/Preferences/lofi.rocks.plist",
    "~/Library/Saved Application State/lofi.rocks.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
