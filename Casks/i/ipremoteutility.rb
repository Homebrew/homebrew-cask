cask "ipremoteutility" do
  version "1.9.12"
  sha256 "8354e149e6cff95e66e151749f6e4ce831a721ec9fa59c09d87b1677769d6bb0"

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
