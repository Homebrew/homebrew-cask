cask "perimeter81" do
  # NOTE: "81" is not a version number, but an intrinsic part of the product name
  version "10.1.2.318"
  sha256 "8fccf54554fcfd77008d6079850dc71ae5a0bc3288a983a6c255a7411d276a8f"

  url "https://static.perimeter81.com/agents/mac/Perimeter81_#{version}.pkg"
  name "Perimeter 81"
  desc "Zero trust network as a service client"
  homepage "https://perimeter81.com/"

  livecheck do
    url "https://support.perimeter81.com/v1/docs/en/downloading-the-agent/"
    regex(/href=.*?Perimeter81[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  pkg "Perimeter81_#{version}.pkg"

  uninstall pkgutil:   "com.safervpn.osx.smb",
            signal:    ["TERM", "com.safervpn.osx.smb"],
            launchctl: [
              "com.perimeter81.osx.HelperTool",
              "com.perimeter81.Perimeter81",
              "com.perimeter81d",
              "com.perimeter81d.app",
              "system/com.perimeter81d",
            ],
            delete:    [
              "/Library/PrivilegedHelperTools/com.perimeter81.osx.HelperTool",
              "/Library/PrivilegedHelperTools/com.perimeter81d.app/Contents/MacOS/com.perimeter81d",
            ]

  zap trash: [
    "~/Library/Application Support/com.safervpn.osx.smb",
    "~/Library/Caches/com.safervpn.osx.smb",
    "~/Library/Caches/Perimeter 81",
    "~/Library/Preferences/com.safervpn.osx.smb.plist",
    "~/Library/Saved Application State/com.safervpn.osx.smb.savedState",
  ]
end
