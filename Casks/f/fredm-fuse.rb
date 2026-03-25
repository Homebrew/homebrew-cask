cask "fredm-fuse" do
  version "1.7.0"
  sha256 "75902a76b4c45bed9d4cf60405edddb7068c778609eab558aa2cbe7c375c6ce1"

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip",
      verified: "downloads.sourceforge.net/fuse-for-macosx/"
  name "Fuse for Mac OS X"
  desc "Port of the UNIX ZX Spectrum emulator Fuse"
  homepage "https://fuse-for-macosx.sourceforge.io/"

  depends_on macos: ">= :big_sur"

  app "Fuse for MacOS/Fuse.app"

  zap trash: "~/Library/Preferences/net.sourceforge.fuse-for-macosx.Fuse.plist"
end
