cask "plistedplus" do
  version "1.0.89"

  if MacOS.version <= :sierra
    sha256 "801e5de263d70fc718a03f91cc0c7cceb190a817a677cc126716c44a3afe5349"
    url "https://github.com/ic005k/PlistEDPlus/releases/download/#{version}/PlistEDPlus_Mac10.12.and.below.dmg"
  else
    sha256 "a045ef009c56c7def1d373788578ee9a809493af8dc8cf5592c6bfc62633f815"
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
