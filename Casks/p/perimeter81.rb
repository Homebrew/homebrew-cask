cask "perimeter81" do
  # NOTE: "81" is not a version number, but an intrinsic part of the product name
  version "12.9.0.11237"
  sha256 "168fbead8e354ba6f1b11a273ac4ac4a328f0cbde5bc8e8c0c0eb5ec846ac6cd"

  url "https://static.perimeter81.com/agents/mac/Harmony_SASE_#{version}.pkg"
  name "Perimeter 81"
  desc "Zero trust network as a service client"
  homepage "https://perimeter81.com/"

  livecheck do
    url "https://support.perimeter81.com/v1/docs/downloading-the-agent"
    regex(/href=.*?Harmony[._-]SASE[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: :big_sur

  # The pkg has detection for the `skip_autostart` flag to prevent launching after install
  rename "Harmony_SASE_#{version}.pkg", "Harmony_SASE_#{version}_skip_autostart.pkg"

  pkg "Harmony_SASE_#{version}_skip_autostart.pkg"

  # Each uninstall declaration only allows a single script action,
  # so multiple declarations are necessary here.
  uninstall early_script: {
    executable:   "/usr/bin/chflags",
    args:         ["-RL", "noschg", "/Applications/Harmony SASE.app"],
    must_succeed: false,
  }
  uninstall early_script: {
    executable:   "/usr/bin/chflags",
    args:         ["-RL", "noschg", "/Library/PrivilegedHelperTools/com.perimeter81.osx.HelperTool"],
    must_succeed: false,
  }
  uninstall launchctl: [
              "com.harmonySASE.app",
              "com.perimeter81.osx.HelperTool",
              "com.perimeter81.Perimeter81",
              "com.perimeter81d",
              "com.perimeter81d.app",
              "system/com.perimeter81d",
            ],
            signal:    ["TERM", "com.safervpn.osx.smb"],
            pkgutil:   "com.safervpn.osx.smb",
            delete:    "/Library/PrivilegedHelperTools/com.perimeter81.osx.HelperTool"

  zap trash: [
    "~/Library/Application Support/com.safervpn.osx.smb",
    "~/Library/Caches/com.safervpn.osx.smb",
    "~/Library/Caches/Perimeter 81",
    "~/Library/Preferences/com.safervpn.osx.smb.plist",
    "~/Library/Saved Application State/com.safervpn.osx.smb.savedState",
  ]
end
