cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.1.4"
  sha256 arm:   "fbb4a43ba82ff249f8cfd71c6391c87cb8e7a6cbfcf4c0588a5dc7db3a50499b",
         intel: "2d4970ecf30fd4da6a209deac18ddfb7ef20b103fc0aee98aa46a21f9679a99c"

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
