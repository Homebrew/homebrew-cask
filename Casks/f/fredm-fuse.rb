cask "fredm-fuse" do
  version "1.9.0"
  sha256 "461a61cdc1f83577433bcdd96b002216202420fcc559ff0c9bd5a580eababe9b"

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip",
      verified: "downloads.sourceforge.net/fuse-for-macosx/"
  name "Fuse for Mac OS X"
  desc "Port of the UNIX ZX Spectrum emulator Fuse"
  homepage "https://fuse-for-macosx.sourceforge.io/"

  depends_on macos: :ventura

  app "Fuse for MacOS/Fuse.app"

  zap trash: "~/Library/Preferences/net.sourceforge.fuse-for-macosx.Fuse.plist"
end
