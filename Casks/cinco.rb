cask "cinco" do
  version "2.0.1"
  sha256 "a2f35c563207af99ccc322c5b12d953821e16f191c63c7690bb31f7a0d0c8093"

  url "https://ls5download.cs.tu-dortmund.de/cinco/releases/#{version}/cinco-#{version}-macos.dmg",
      verified: "ls5download.cs.tu-dortmund.de/cinco/releases/"
  name "Cinco"
  desc "Generator-driven Eclipse IDE for domain-specific graphical modeling tools"
  homepage "https://cinco.scce.info/"

  livecheck do
    url "https://ls5download.cs.tu-dortmund.de/cinco/releases/"
    strategy :page_match
    regex(%r{href="(\d+(?:\.\d+)*)/"}i)
  end

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
