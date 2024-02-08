cask "spyder" do
  arch arm: "arm64", intel: "x86_64"

  version "5.5.1"
  sha256 arm:   "ae399b7d27b2c33eae952e0eb48eb6b9949052ffea7dc57b1f6686a75915b01a",
         intel: "024f35c289bb8dc17b450f67916e0cf0794787884c53857bfee48948370db348"

  url "https://github.com/spyder-ide/spyder/releases/download/v#{version}/Spyder_#{arch}.dmg",
      verified: "github.com/spyder-ide/spyder/"
  name "Spyder"
  desc "Scientific Python IDE"
  homepage "https://www.spyder-ide.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Spyder.app"

  zap trash: [
    "~/.spyder-py3",
    "~/Library/Application Support/Spyder",
    "~/Library/Caches/Spyder",
    "~/Library/Saved Application State/org.spyder-ide.Spyder.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
