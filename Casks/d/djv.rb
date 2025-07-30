cask "djv" do
  version "3.1.0"
  sha256 "6edfff1b34fbc4ed9d9ec6d0e7a820d2add99fc06c3cf9e6c934ef840e4ec9eb"

  url "https://github.com/darbyjohnston/DJV/releases/download/#{version}/DJV-#{version}-Darwin-arm64.dmg",
      verified: "github.com/darbyjohnston/DJV/"
  name "DJV"
  desc "Review software for VFX, animation, and film production"
  homepage "https://darbyjohnston.github.io/DJV/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :unsigned

  depends_on arch: :arm64

  app "DJV.app"

  zap trash: [
        "~/Documents/DJV/djv.log",
        "~/Library/Preferences/com.djv-sourceforge-net-*.plist",
      ],
      rmdir: "~/Documents/DJV"
end
