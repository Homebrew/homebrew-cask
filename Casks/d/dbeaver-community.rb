cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.1.1"
  sha256 arm:   "4794d026afac4541471fc12e69781e48950e9e17a96c224b4d498ed0530e8331",
         intel: "7603adb9f0114559b0b5797e72c9abdac301cc3beafb95d1a2d390ad3cfc8f2b"

  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos-#{arch}.dmg"
  name "DBeaver Community Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  livecheck do
    url "https://dbeaver.io/product/dbeaver-ce-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  auto_updates true

  app "DBeaver.app"
  binary "#{appdir}/DBeaver.app/Contents/MacOS/dbeaver"

  uninstall signal: ["TERM", "org.jkiss.dbeaver.core.product"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/org.jkiss.dbeaver.core.product.plist",
    "~/Library/Saved Application State/org.jkiss.dbeaver.core.product.savedState",
  ]
end
