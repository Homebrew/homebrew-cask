cask "djv" do
  version "3.6.0"
  sha256 "dcd355bb39325205db74d66d8223402c24101780339a3cc6563b585a20713bfe"

  url "https://github.com/grizzlypeak3d/DJV/releases/download/#{version}/DJV-#{version}-macOS-arm64.dmg"
  name "DJV"
  desc "Review software for VFX, animation, and film production"
  homepage "https://grizzlypeak3d.github.io/DJV/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "djv.app"

  zap trash: [
        "~/Documents/DJV/djv.log",
        "~/Library/Preferences/com.djv-sourceforge-net-*.plist",
      ],
      rmdir: "~/Documents/DJV"
end
