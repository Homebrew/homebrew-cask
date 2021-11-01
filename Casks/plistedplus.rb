cask "plistedplus" do
  version "1.0.72"

  if MacOS.version <= :sierra
    sha256 "2351144dc51d9998e20f62d1a3135c2a2a5bdfb7d0b678aae54c702dca2be850"
    url "https://github.com/ic005k/PlistEDPlus/releases/download/#{version}/PlistEDPlus_Mac10.12.and.below.dmg"
  else
    sha256 "403846519dacb72ecda8a5ea63e0bba6a3ffcc446615f2f539172cb935718986"
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
