cask "ransomwhere" do
  version "1.2.5"
  sha256 "091a61bb99f5fe73944cda2b6ad26efb6d7ffaf8ddd391d237b82afb10b46a67"

  url "https://bitbucket.org/objective-see/deploy/downloads/RansomWhere_#{version}.zip",
      verified: "bitbucket.org/objective-see/"
  name "RansomWhere"
  desc "Protect your personal files"
  homepage "https://objective-see.org/products/ransomwhere.html"

  installer script: {
    executable: "#{staged_path}/RansomWhere_Installer.app/Contents/MacOS/RansomWhere_Installer",
    args:       ["-install"],
    sudo:       true,
  }

  uninstall script: {
    executable: "#{staged_path}/RansomWhere_Installer.app/Contents/MacOS/RansomWhere_Installer",
    args:       ["-uninstall"],
    sudo:       true,
  }

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
