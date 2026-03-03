cask "ransomwhere" do
  version "2.0.1"
  sha256 "27369063695d4c483c0124f0150fb250ca26371ac4f2714cb99030289d4e98dc"

  url "https://github.com/objective-see/RansomWhere/releases/download/v#{version}/RansomWhere_#{version}.zip",
      verified: "github.com/objective-see/RansomWhere/"
  name "RansomWhere"
  desc "Protect your personal files"
  homepage "https://objective-see.org/products/ransomwhere.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  installer script: {
    executable: "#{staged_path}/RansomWhere Installer.app/Contents/Resources/configure.sh",
    args:       ["-install"],
    sudo:       true,
  }
  installer script: {
    executable: "launchctl",
    args:       ["bootstrap", "system", "/Library/LaunchDaemons/com.objective-see.ransomwhere.plist"],
    sudo:       true,
  }

  uninstall script: {
    executable: "#{staged_path}/RansomWhere Installer.app/Contents/Resources/configure.sh",
    args:       ["-uninstall", "1"],
    sudo:       true,
  }

  # No zap stanza required

  caveats do
    requires_rosetta

    "#{@cask} requires full disk access permissions.

    Enable or re-enable it in:
      System Settings → Privacy & Security → Full Disk Access"
  end
end
