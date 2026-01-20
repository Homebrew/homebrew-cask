cask "tinderbox" do
  version "11.5.1"
  sha256 "522fbb85edf5cc5a0c77f7317c19d383aa45cbee45b4bfdbd90570cb808c222e"

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
