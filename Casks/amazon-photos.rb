cask "amazon-photos" do
  version :latest
  sha256 :no_check

  # d29x207vrinatv.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d29x207vrinatv.cloudfront.net/mac/AmazonPhotosInstaller.dmg"
  name "Amazon Drive"
  name "Amazon Photos"
  desc "Photo storage and sharing service"
  homepage "https://www.amazon.com/Amazon-Photos/b?node=13234696011"

  installer script: {
    executable: "Amazon Photos Installer.app/Contents/MacOS/Amazon Photos Installer",
    args:       ["--quiet"],
  }

  uninstall quit:      "com.amazon.clouddrive.mac",
            delete:    "/Applications/Amazon Photos.app",
            launchctl: "com.amazon.clouddrive"

  zap trash: [
    "~/Library/Application Scripts/Amazon Cloud Drive",
    "~/Library/Application Support/Amazon Cloud Drive",
    "~/Library/Application Support/Amazon Drive",
    "~/Library/Caches/com.amazon.clouddrive.mac.installer",
    "~/Library/Caches/com.amazon.clouddrive.mac",
    "~/Library/Cookies/com.amazon.clouddrive.mac.binarycookies",
    "~/Library/Logs/Amazon Cloud Drive",
    "~/Library/Logs/Amazon Drive",
    "~/Library/Preferences/com.amazon.clouddrive.mac.plist",
  ]
end
