cask "perimeter81" do
  # NOTE: "81" is not a version number, but an intrinsic part of the product name
  version "7.0.0"
  sha256 :no_check

  url "https://static.perimeter81.com/apps/osx/sdp/Perimeter81.pkg"
  name "Perimeter 81"
  desc "Zero trust network as a service client"
  homepage "https://perimeter81.com/"

  pkg "Perimeter81.pkg"

  uninstall pkgutil:   "com.safervpn.osx.smb",
            signal:    ["TERM", "com.safervpn.osx.smb"],
            launchctl: [
              "com.perimeter81.Perimeter81",
              "com.perimeter81.osx.HelperTool",
            ],
            delete:    "/Library/PrivilegedHelperTools/com.perimeter81.osx.HelperTool"

  zap trash: [
    "~/Library/Application Support/com.safervpn.osx.smb",
    "~/Library/Caches/Perimeter 81",
    "~/Library/Caches/com.safervpn.osx.smb",
    "~/Library/Preferences/com.safervpn.osx.smb.plist",
    "~/Library/Saved Application State/com.safervpn.osx.smb.savedState",
  ]
end
