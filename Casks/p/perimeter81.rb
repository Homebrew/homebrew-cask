cask "perimeter81" do
  # NOTE: "81" is not a version number, but an intrinsic part of the product name
  version "11.6.1.4855"
  sha256 "c0a83d40052ec18752fbf5f2a6331105c1b45958caf82633db672f71ce75cb34"

  url "https://static.perimeter81.com/agents/mac/Harmony_SASE_#{version}.pkg"
  name "Perimeter 81"
  desc "Zero trust network as a service client"
  homepage "https://perimeter81.com/"

  livecheck do
    url "https://support.perimeter81.com/v1/docs/downloading-the-agent"
    regex(/href=.*?Harmony[._-]SASE[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :big_sur"

  pkg "Harmony_SASE_#{version}.pkg"

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
