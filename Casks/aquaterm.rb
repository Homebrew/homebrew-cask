cask "aquaterm" do
  version "1.1.1"
  sha256 "94b33efea2ec037e6c06beef54b4b3cc48595453c874de863f25c26b3a7ffdb2"

  url "https://downloads.sourceforge.net/aquaterm/AquaTerm/v#{version}/AquaTerm-#{version}.dmg"
  name "AquaTerm"
  desc "Grahics renderer"
  homepage "https://sourceforge.net/projects/aquaterm/"

  depends_on macos: ">= :high_sierra"

  pkg "AquaTermInstaller.pkg"

  uninstall pkgutil: "net.sourceforge.aquaterm.aquaterm.*",
            delete:  "/Library/Frameworks/AquaTerm.framework"

  zap trash: "~/Library/Preferences/net.sourceforge.aquaterm.plist"
end
