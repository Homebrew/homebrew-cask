cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.0.2"
  sha256 arm:   "a3d3aa9a482e631dfb9b5addd01e5a6fbd2d8cf5e289391fe4f7c7fc08008ba3",
         intel: "095020eae470a7e9f4fd7e6868ae237323fd309bbd1a5a788b0f5fe7342bc55e"

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
  binary "#{appdir}/DBeaver.app/Contents/MacOS/dbeaver"

  uninstall signal: ["TERM", "org.jkiss.dbeaver.core.product"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/org.jkiss.dbeaver.core.product.plist",
    "~/Library/Saved Application State/org.jkiss.dbeaver.core.product.savedState",
  ]
end
