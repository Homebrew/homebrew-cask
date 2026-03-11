cask "ransomwhere" do
  version "2.1.2"
  sha256 "0aa1fe3299f3d6ebab30c9410951cfbc4ccee688a9b4757e49eafd2b83c2a214"

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
