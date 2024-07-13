cask "tinderbox" do
  version "10.0.0"
  sha256 "70c73253dcadbc509027c32eebbd1de56b05152fc1c5c4f9c0e7854dc1bccdab"

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  name "Tinderbox"
  desc "Tool to take, visualise and analyze notes"
  homepage "https://eastgate.com/Tinderbox/"

  livecheck do
    url :homepage
    regex(/>Download.*?Tinderbox\s+v?(\d+(?:\.\d+)+)[<\s]/im)
  end

  depends_on macos: ">= :high_sierra"

  app "Tinderbox #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Tinderbox",
    "~/Library/Caches/com.eastgate.Tinderbox-#{version.major}",
    "~/Library/Preferences/com.eastgate.Tinderbox-#{version.major}.plist",
    "~/Library/Preferences/Tinderbox™ Preferences",
    "~/Library/Saved Application State/com.eastgate.Tinderbox-#{version.major}.savedState",
    "~/Library/WebKit/com.eastgate.Tinderbox-#{version.major}",
  ]
end
