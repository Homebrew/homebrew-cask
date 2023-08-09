cask "freeorion" do
  version "0.5"
  sha256 "de3386188ee90ed8d0080a2b1c848f44c86304349c3235ac349f1d4777a30e1d"

  url "https://github.com/freeorion/freeorion/releases/download/v#{version}/FreeOrion_v#{version}_MacOSX_10.12.dmg",
      verified: "github.com/freeorion/"
  name "FreeOrion"
  desc "Turn-based space empire and galactic conquest game"
  homepage "https://freeorion.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "FreeOrion.app"

  zap trash: [
    "~/Library/Application Support/FreeOrion",
    "~/Library/Saved Application State/org.freeorion.FreeOrion.savedState",
  ]
end
