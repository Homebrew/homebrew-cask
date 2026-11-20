cask "ipremoteutility" do
  version "1.11.2"
  sha256 "e11fa814bcb95863a1a161cc99090aa9c19da221a4fed59adf76d6e1f63055a1"

  url "https://www.flandersscientific.com/ip-remote/release/IPRemoteUtility-#{version}-macOS.zip"
  name "Flanders IP Remote Utility"
  desc "Management of Flanders Scientific hardware"
  homepage "https://www.flandersscientific.com/ip-remote/"

  livecheck do
    url :homepage
    regex(/href=.*?IPRemoteUtility[._-]v?(\d+(?:\.\d+)+)[._-]macOS\.zip/i)
  end

  depends_on :macos

  app "IPRemoteUtility.app"

  zap trash: [
    "~/Library/Application Support/FlandersScientific/IPRemoteUtility",
    "~/Library/Caches/FlandersScientific/IPRemoteUtility",
    "~/Library/Preferences/com.flandersscientific.IPRemoteUtility.plist",
  ]

  caveats do
    requires_rosetta
  end
end
