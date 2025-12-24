cask "tinderbox" do
  version "11.5.0"
  sha256 "901de84e05c4da1c7b100f6382c5e2c1a6546437d455cf76c560928da7000790"

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  name "Tinderbox"
  desc "Tool to take, visualise and analyze notes"
  homepage "https://eastgate.com/Tinderbox/"

  livecheck do
    url :homepage
    regex(/>Download\s+<a[^>]*>\s*Tinderbox\s+v?(\d+(?:\.\d+)+)\s*</im)
  end

  depends_on macos: ">= :monterey"

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
