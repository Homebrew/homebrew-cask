cask "ransomwhere" do
  version "2.1.1"
  sha256 "7d69a74dca37bed9e15564120302df4ead88a3a343f5a9de414d0b6708fa0309"

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
