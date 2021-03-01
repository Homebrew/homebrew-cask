cask "cinco" do
  version "1.1"
  sha256 "0e2ada95f3735cc123950f7ad999f4aa954f48dc82f6c379dda6f06b9a9e05d2"

  url "https://ls5download.cs.tu-dortmund.de/cinco/releases/#{version}/cinco-#{version}-macosx.cocoa.x86_64.zip",
      verified: "ls5download.cs.tu-dortmund.de/cinco/releases/"
  name "Cinco"
  desc "Generator-driven Eclipse IDE for domain-specific graphical modeling tools"
  homepage "https://cinco.scce.info/"

  app "cinco-#{version}.app"

  uninstall quit: "de.jabc.cinco.meta.product.product"

  zap trash: [
    "~/Library/Preferences/de.jabc.cinco.meta.product.product.plist",
    "~/Library/Saved Application State/de.jabc.cinco.meta.product.product.savedState",
  ]

  caveats do
    license "https://www.eclipse.org/legal/epl-v10.html"
    depends_on_java "8"
  end
end
