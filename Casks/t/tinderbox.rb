cask "tinderbox" do
  version "9.7.1"
  sha256 "4b7f68a009b5071bc3ad6904fcca5242c325ca3f5f49d76bc842a4dd9ea09dcb"

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
