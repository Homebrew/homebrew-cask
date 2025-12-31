cask "djv" do
  version "3.3.1"
  sha256 "682ee9320dd2141840f40def30c168b131430a283f42cc836865023d5154b6c3"

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
