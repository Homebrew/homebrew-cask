cask "tinderbox" do
  version "9.6.1"
  sha256 "e309c21dc4393502cf35f9d8a3e660923229c1670e4d2f43e6dbb6f2be4485c9"

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  name "Tinderbox"
  desc "Tool to take, visualize and analyze notes"
  homepage "https://eastgate.com/Tinderbox/"

  livecheck do
    url :homepage
    regex(/>Download.*?Tinderbox\s+v?(\d+(?:\.\d+)+)[<\s]/im)
  end

  depends_on macos: ">= :high_sierra"

  app "Tinderbox #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Tinderbox",
    "~/Library/Caches/com.eastgate.Tinderbox-9",
    "~/Library/Preferences/Tinderbox™ Preferences",
    "~/Library/Preferences/com.eastgate.Tinderbox-9.plist",
    "~/Library/Saved Application State/com.eastgate.Tinderbox-9.savedState",
    "~/Library/WebKit/com.eastgate.Tinderbox-9",
  ]
end
