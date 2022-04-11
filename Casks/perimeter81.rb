cask "perimeter81" do
  # NOTE: "81" is not a version number, but an intrinsic part of the product name
  version "8.0.4.116"
  sha256 "48be8a6437053f1ae04273877a2e880676208b88a40045f4455485ecd5e76655"

  url "https://static.perimeter81.com/agents/mac/Perimeter81_#{version}.pkg"
  name "Perimeter 81"
  desc "Zero trust network as a service client"
  homepage "https://perimeter81.com/"

  livecheck do
    skip "No version information available"
  end

  pkg "Perimeter81_#{version}.pkg"

  uninstall pkgutil:   "com.safervpn.osx.smb",
            signal:    ["TERM", "com.safervpn.osx.smb"],
            launchctl: [
              "system/com.perimeter81d",
              "com.perimeter81d",
              "com.perimeter81d.app",
              "com.perimeter81.Perimeter81",
              "com.perimeter81.osx.HelperTool",
            ],
            delete:    [
              "/Library/PrivilegedHelperTools/com.perimeter81.osx.HelperTool",
              "/Library/PrivilegedHelperTools/com.perimeter81d.app/Contents/MacOS/com.perimeter81d",
            ]

  zap trash: [
    "~/Library/Application Support/com.safervpn.osx.smb",
    "~/Library/Caches/Perimeter 81",
    "~/Library/Caches/com.safervpn.osx.smb",
    "~/Library/Preferences/com.safervpn.osx.smb.plist",
    "~/Library/Saved Application State/com.safervpn.osx.smb.savedState",
  ]
end
