cask "ipremoteutility" do
  version "1.9.5"
  sha256 "a832a28000356830daafecc3fec4aa18a6dc1bfdaeab84ed1a3113b9cf0ae726"

  url "https://www.flandersscientific.com/ip-remote/release/IPRemoteUtility-#{version}-macOS.zip"
  name "Flanders IP Remote Utility"
  desc "Management of Flanders Scientific hardware"
  homepage "https://www.flandersscientific.com/ip-remote/"

  livecheck do
    url :homepage
    regex(/href=.*?IPRemoteUtility[._-]v?(\d+(?:\.\d+)+)[._-]macOS\.zip/i)
  end

  depends_on macos: ">= :high_sierra"

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
