cask "ipremoteutility" do
  version "1.11.0"
  sha256 "0c429fab7602e33f6035859208156b5809870b424a42849e77c9ebc4857b34c7"

  url "https://www.flandersscientific.com/ip-remote/release/IPRemoteUtility-#{version}-macOS.zip"
  name "Flanders IP Remote Utility"
  desc "Management of Flanders Scientific hardware"
  homepage "https://www.flandersscientific.com/ip-remote/"

  livecheck do
    url :homepage
    regex(/href=.*?IPRemoteUtility[._-]v?(\d+(?:\.\d+)+)[._-]macOS\.zip/i)
  end

  depends_on :macos

  app "IPRemoteUtility-#{version}-macOS/IPRemoteUtility.app"

  zap trash: [
    "~/Library/Application Support/FlandersScientific/IPRemoteUtility",
    "~/Library/Caches/FlandersScientific/IPRemoteUtility",
    "~/Library/Preferences/com.flandersscientific.IPRemoteUtility.plist",
  ]

  caveats do
    requires_rosetta
  end
end
