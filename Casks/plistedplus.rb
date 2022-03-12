cask "plistedplus" do
  version "1.2.34"

  if MacOS.version <= :sierra
    sha256 "ca145387ab70694d2f4b15db1938a1880f9c7e7b279a846e128ee88de20d6aa9"
    url "https://github.com/ic005k/PlistEDPlus/releases/download/#{version}/PlistEDPlus_Mac10.12.and.below.dmg"
  else
    sha256 "45540bc546d43c69cdf85cd95dc23b486409f919e3b71edbadf9ede5b72b446f"
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
