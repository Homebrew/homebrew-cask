cask "djv" do
  version "3.1.1"
  sha256 "17205f31597c7ba7fb749685c53ed411afee448f48af5f0fdab46dc2511dd6fe"

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
