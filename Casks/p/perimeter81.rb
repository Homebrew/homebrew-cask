cask "perimeter81" do
  # NOTE: "81" is not a version number, but an intrinsic part of the product name
  version "10.3.0.601"
  sha256 "de6f9b63a31e1b5e8843ff6bf4505cf72bc5c363ff6d0dc6a8a73fd3b916853e"

  url "https://static.perimeter81.com/agents/mac/Perimeter81_#{version}.pkg"
  name "Perimeter 81"
  desc "Zero trust network as a service client"
  homepage "https://perimeter81.com/"

  livecheck do
    url "https://support.perimeter81.com/v1/docs/en/downloading-the-agent"
    regex(/href=.*?Perimeter81[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  pkg "Perimeter81_#{version}.pkg"

  uninstall launchctl: [
              "com.perimeter81.osx.HelperTool",
              "com.perimeter81.Perimeter81",
              "com.perimeter81d",
              "com.perimeter81d.app",
              "system/com.perimeter81d",
            ],
            signal:    ["TERM", "com.safervpn.osx.smb"],
            pkgutil:   "com.safervpn.osx.smb",
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
