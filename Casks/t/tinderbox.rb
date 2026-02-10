cask "tinderbox" do
  version "11.5.2"
  sha256 "8550db7bf7e8f436f5a460a482d78a90d8a9aad43c1a86dd57733e7da0197c7d"

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
