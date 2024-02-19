cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.3.5"
  sha256 arm:   "3121eb483508003e5ea4dcaba821212fcf7df5b1efc5a395e34ec4aab9c6e684",
         intel: "033f80224c03b2e1cd1a497d1c901a329dfaf017b3960118f378946eadc7952f"

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
