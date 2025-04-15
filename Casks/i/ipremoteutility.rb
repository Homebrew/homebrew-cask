cask "ipremoteutility" do
  version "1.9.13"
  sha256 "339ae738424a1588524c047112ee7f9e4b8efb1d2a7414010d968881cf3f74a1"

  url "https://www.flandersscientific.com/ip-remote/release/IPRemoteUtility-#{version}-macOS.zip"
  name "Flanders IP Remote Utility"
  desc "Management of Flanders Scientific hardware"
  homepage "https://www.flandersscientific.com/ip-remote/"

  livecheck do
    url :homepage
    regex(/href=.*?IPRemoteUtility[._-]v?(\d+(?:\.\d+)+)[._-]macOS\.zip/i)
  end

  depends_on macos: ">= :high_sierra"
  container nested: "IPRemoteUtility-#{version}-macOS/IPRemoteUtility.dmg"

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
