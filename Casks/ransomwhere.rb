cask "ransomwhere" do
  version "1.2.5"
  sha256 "091a61bb99f5fe73944cda2b6ad26efb6d7ffaf8ddd391d237b82afb10b46a67"

  # bitbucket.org/objective-see/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/RansomWhere_#{version}.zip"
  appcast "https://objective-see.com/products/changelogs/RansomWhere.txt"
  name "RansomWhere"
  homepage "https://objective-see.com/products/ransomwhere.html"

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
end
