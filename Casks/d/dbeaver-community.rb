cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.3.2"
  sha256 arm:   "7da91112ca1f5f8aa3c05b00a78ee4b1d219b3d9493fe50e00efeaea0f454121",
         intel: "7262542d1c4babd7cf14db81fc696689cb6f6454406e377155f9371a7942eb6f"

  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos-#{arch}.dmg"
  name "DBeaver Community Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  livecheck do
    url "https://dbeaver.io/product/dbeaver-ce-version.xml"
    strategy :xml do |xml|
      xml.get_elements("version/number").first&.text&.strip
    end
  end

  auto_updates true

  app "DBeaver.app"

  uninstall signal: ["TERM", "org.jkiss.dbeaver.core.product"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/org.jkiss.dbeaver.core.product.plist",
    "~/Library/Saved Application State/org.jkiss.dbeaver.core.product.savedState",
  ]
end
