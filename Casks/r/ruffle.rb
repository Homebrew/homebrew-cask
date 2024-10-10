cask "ruffle" do
  version "2024-09-21"
  sha256 "c6f1f4e230600a75117cdba61139a6deabfe2e12e80d40c43aa6fa9dc11f2d0f"

  url "https://github.com/ruffle-rs/ruffle/releases/download/nightly-#{version}/ruffle-nightly-#{version.hyphens_to_underscores}-macos-universal.tar.gz",
      verified: "github.com/ruffle-rs/ruffle/"
  name "ruffle"
  desc "Flash Player emulator"
  homepage "https://ruffle.rs"

  livecheck do
    url :url
    regex(/(nightly-?)(\d+(?:\.-_\d+)+)/i)
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Ruffle.app"

  zap trash: [
    "~/Library/Application Scripts/rs.ruffle.ruffle",
    "~/Library/Application Scripts/rs.ruffle.ruffle.extension",
    "~/Library/Application Support/ruffle",
    "~/Library/Containers/rs.ruffle.ruffle",
    "~/Library/Containers/rs.ruffle.ruffle.extension",
  ]
end
