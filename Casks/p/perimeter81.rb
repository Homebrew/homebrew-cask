cask "perimeter81" do
  # NOTE: "81" is not a version number, but an intrinsic part of the product name
  version "11.6.0.4498"
  sha256 "e2e5492620e52a753d24c9b8fd2e539c1ed73828fd43a75db58fef9c85d1aef3"

  url "https://static.perimeter81.com/agents/mac/Harmony_SASE_#{version}.pkg"
  name "Perimeter 81"
  desc "Zero trust network as a service client"
  homepage "https://perimeter81.com/"

  livecheck do
    url "https://support.perimeter81.com/v1/docs/downloading-the-agent"
    regex(/href=.*?Harmony[._-]SASE[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  no_autobump! because: :requires_manual_review

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
