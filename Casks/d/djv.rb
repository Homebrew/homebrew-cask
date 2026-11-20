cask "djv" do
  version "3.7.7"
  sha256 "60342c6c5e6f8ed1ecb81aab3fc5b11c780550f2176f2ef1cabb6170015db2aa"

  url "https://github.com/grizzlypeak3d/DJV/releases/download/#{version}/DJV-#{version}-macOS-arm64.dmg"
  name "DJV"
  desc "Review software for VFX, animation, and film production"
  homepage "https://grizzlypeak3d.github.io/DJV/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "djv.app"

  zap trash: [
        "~/Documents/DJV/djv.log",
        "~/Library/Application Support/DJV",
        "~/Library/Preferences/com.djv-sourceforge-net-*.plist",
      ],
      rmdir: "~/Documents/DJV"
end
