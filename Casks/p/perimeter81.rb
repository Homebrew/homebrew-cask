cask "perimeter81" do
  # NOTE: "81" is not a version number, but an intrinsic part of the product name
  version "11.5.0.4178"
  sha256 "7f84e5fba493cb7e00dfc3026d30493c1d61082af20799790029aad1bafc4a01"

  url "https://static.perimeter81.com/agents/mac/Harmony_SASE_#{version}.pkg"
  name "Perimeter 81"
  desc "Zero trust network as a service client"
  homepage "https://perimeter81.com/"

  livecheck do
    url "https://support.perimeter81.com/v1/docs/downloading-the-agent"
    regex(/href=.*?Harmony[._-]SASE[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :ventura"

  pkg "Harmony_SASE_#{version}.pkg"

  uninstall_preflight do
    # Removing no-touch flags
    # https://supportbucketshare.s3.amazonaws.com/Knowledge+Base/uninstall.sh
    [
      "/Applications/Harmony SASE.app",
      "/Applications/Perimeter 81.app",
      "/Library/LaunchDaemons/com.harmonySASEd.plist",
      "/Library/LaunchDaemons/com.perimeter81.osx.HelperTool.plist",
      "/Library/LaunchDaemons/com.perimeter81d.plist",
      "/Library/PrivilegedHelperTools/com.harmonySASEd.app",
      "/Library/PrivilegedHelperTools/com.perimeter81.osx.HelperTool",
      "/Library/PrivilegedHelperTools/com.perimeter81d.app",
    ].each do |path|
      next unless File.exist?(path)

      system_command "chflags",
                     args: ["-RL", "noschg", path],
                     sudo: true
    end
  end

  uninstall launchctl: [
              "com.harmonySASEd",
              "com.perimeter81.osx.HelperTool",
              "com.perimeter81d",
            ],
            signal:    ["TERM", "com.safervpn.osx.smb"],
            pkgutil:   "com.safervpn.osx.smb",
            delete:    [
              "/Library/PrivilegedHelperTools/com.harmonySASEd.app",
              "/Library/PrivilegedHelperTools/com.perimeter81.osx.HelperTool",
              "/Library/PrivilegedHelperTools/com.perimeter81d.app",
            ]

  zap trash: [
    "~/Library/Application Support/com.safervpn.osx.smb",
    "~/Library/Caches/com.safervpn.osx.smb",
    "~/Library/Caches/Perimeter 81",
    "~/Library/HTTPStorages/com.safervpn.osx.smb",
    "~/Library/Logs/Perimeter81*",
    "~/Library/Preferences/com.safervpn.osx.smb.plist",
    "~/Library/Saved Application State/com.safervpn.osx.smb.savedState",
  ]
end
