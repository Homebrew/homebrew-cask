cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.0.2"
  sha256 arm:   "6c6c67f32f61bc9caa8f5fe2e6d49cb9f3b9fd98dd94e94f0a199e2fe0d6c286",
         intel: "f107faf4e1d73e2a9d32cfff7f58db29bc8aa2597ea17f8ffa5de6a5d3afada2"

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
    "~/Library/Caches/org.jkiss.dbeaver.core.product",
    "~/Library/DBeaverData",
    "~/Library/HTTPStorages/org.jkiss.dbeaver.core.product",
    "~/Library/Preferences/org.jkiss.dbeaver.core.product.plist",
    "~/Library/Saved Application State/org.jkiss.dbeaver.core.product.savedState",
  ]
end
