cask "djv" do
  version "3.3.2"
  sha256 "b519023f2ba378de1b5ddcfd53ef9eb9a81bf8874a7d9fa0127726c70c35c224"

  url "https://github.com/grizzlypeak3d/DJV/releases/download/#{version}/DJV-#{version}-macOS-arm64.dmg",
      verified: "github.com/grizzlypeak3d/DJV/"
  name "DJV"
  desc "Review software for VFX, animation, and film production"
  homepage "https://grizzlypeak3d.github.io/DJV/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "DJV.app"

  zap trash: [
        "~/Documents/DJV/djv.log",
        "~/Library/Preferences/com.djv-sourceforge-net-*.plist",
      ],
      rmdir: "~/Documents/DJV"
end
