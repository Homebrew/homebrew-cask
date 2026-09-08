cask "ransomwhere" do
  version "2.2.0"
  sha256 "982b0b9c3027947e0aaca16d7936fe3e6639ddabe8fafe979c50c7d8c4302af1"

  url "https://github.com/objective-see/RansomWhere/releases/download/v#{version}/RansomWhere_#{version}.zip"
  name "RansomWhere"
  desc "Protect your personal files"
  homepage "https://objective-see.org/products/ransomwhere.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

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
