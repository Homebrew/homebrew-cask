cask "djv" do
  version "3.7.4"
  sha256 "04636a6128fb22bacac0db367d587ec8952829b47a4285d3ab6631762ea97e6c"

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
        "~/Library/Preferences/com.djv-sourceforge-net-*.plist",
      ],
      rmdir: "~/Documents/DJV"
end
