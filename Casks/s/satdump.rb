cask "satdump" do
  arch arm: "Silicon", intel: "Intel"

  version "1.2.2"
  sha256 arm:   "a84cdf81b27a8b484b654ccafe6072cd5b3e7dc06fc3280dd2b801a2ffeef93c",
         intel: "009e48d0b243a1090e07ffe71b2678a0aab314129802522c6aafef4c83b7dcd7"

  url "https://github.com/SatDump/SatDump/releases/download/#{version}/SatDump-macOS-#{arch}.dmg",
      verified: "github.com/SatDump/SatDump/"
  name "SatDump"
  desc "Generic satellite data processing software"
  homepage "https://www.satdump.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SatDump.app"
  binary "#{appdir}/SatDump.app/Contents/MacOS/satdump"

  zap trash: "~/Library/Saved Application State/com.altillimity.satdump.savedState"
end
