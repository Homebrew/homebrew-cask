cask "amazon-photos" do
  version "10.10.1,440"
  sha256 :no_check

  url "https://d29x207vrinatv.cloudfront.net/mac/AmazonPhotosApp.zip",
      verified: "d29x207vrinatv.cloudfront.net/"
  name "Amazon Drive"
  name "Amazon Photos"
  desc "Photo storage and sharing service"
  homepage "https://www.amazon.com/Amazon-Photos/b?node=13234696011"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :sierra"

  app "Amazon Photos.app"

  uninstall launchctl: "com.amazon.clouddrive",
            quit:      "com.amazon.clouddrive.mac"

  zap trash: [
    "~/Library/Application Scripts/Amazon Cloud Drive",
    "~/Library/Application Support/Amazon Cloud Drive",
    "~/Library/Application Support/Amazon Drive",
    "~/Library/Caches/com.amazon.clouddrive.mac",
    "~/Library/Caches/com.amazon.clouddrive.mac.installer",
    "~/Library/Cookies/com.amazon.clouddrive.mac.binarycookies",
    "~/Library/Logs/Amazon Cloud Drive",
    "~/Library/Logs/Amazon Drive",
    "~/Library/Preferences/com.amazon.clouddrive.mac.plist",
  ]

  caveats do
    requires_rosetta
  end
end
