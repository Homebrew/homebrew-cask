cask "cinco" do
  version "2.0"
  sha256 "3a51b99ccaa6fb1bec654fa815d6fbebf95d00251bb4cd83f20dfb2dc500c551"

  url "https://ls5download.cs.tu-dortmund.de/cinco/releases/#{version}/cinco-#{version}-macos.dmg",
      verified: "ls5download.cs.tu-dortmund.de/cinco/releases/"
  name "Cinco"
  desc "Generator-driven Eclipse IDE for domain-specific graphical modeling tools"
  homepage "https://cinco.scce.info/"

  pkg "Install Cinco.pkg"

  uninstall quit:    "de.jabc.cinco.meta.product.product",
            pkgutil: "de.jabc.cinco.meta.product.product.cinco.pkg.component"

  zap trash: [
    "~/Library/Preferences/de.jabc.cinco.meta.product.product.plist",
    "~/Library/Saved Application State/de.jabc.cinco.meta.product.product.savedState",
  ]

  caveats do
    license "https://www.eclipse.org/legal/epl-v10.html"
    depends_on_java "11"
  end
end
