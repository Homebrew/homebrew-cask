cask "plistedplus" do
  version "1.2.31"

  if MacOS.version <= :sierra
    sha256 "0ccaac4eb7c42d443ff1cf6135269229b800b5790e55eab4ecc6fa4fa2834524"
    url "https://github.com/ic005k/PlistEDPlus/releases/download/#{version}/PlistEDPlus_Mac10.12.and.below.dmg"
  else
    sha256 "3cb6952e60731ca99abf222839c018a2a15a3d1eb9445a5561f2eaded7b44112"
    url "https://github.com/ic005k/PlistEDPlus/releases/download/#{version}/PlistEDPlus_Mac.dmg"
  end

  name "PlistEDPlus"
  desc "Plist file editor"
  homepage "https://github.com/ic005k/PlistEDPlus"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PlistEDPlus.app"

  if MacOS.version <= :sierra
    uninstall quit: "com.yourcompany.PlistEDPlus"
  else
    uninstall quit: "z.PlistEDPlus"
  end

  if MacOS.version <= :sierra
    zap trash: [
      "~/Library/Preferences/com.github-com-ic005k.PlistEdPlus.plist",
      "~/Library/Preferences/com.yourcompany.PlistEDPlus.plist",
      "~/Library/Saved Application State/com.yourcompany.PlistEDPlus.savedState",
    ]
  else
    zap trash: [
      "~/Library/Preferences/z.PlistEDPlus.plist",
      "~/Library/Saved Application State/z.PlistEDPlus.savedState",
    ]
  end
end
