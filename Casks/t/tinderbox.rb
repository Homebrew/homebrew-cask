cask "tinderbox" do
  version "10.1.0"
  sha256 "590ec4f91d55c2b69d9160b8a0dfe991118b3427dcd1f31dfc6cd8ef85e8ae85"

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  name "Tinderbox"
  desc "Tool to take, visualise and analyze notes"
  homepage "https://eastgate.com/Tinderbox/"

  livecheck do
    url :homepage
    regex(/>Download.*?Tinderbox\s+v?(\d+(?:\.\d+)+)[<\s]/im)
  end

  depends_on macos: ">= :big_sur"

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
