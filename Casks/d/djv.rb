cask "djv" do
  version "3.3.3"
  sha256 "052283f8dce07ea4f8a0fd18af7b097a01584c0bef17c1a103266734fe8e1a84"

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
