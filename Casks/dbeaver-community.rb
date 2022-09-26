cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.2.1"
  sha256 arm:   "5d4743eb00f966a418dec0870d17b9f1ad3631650aa0485b1457bec8d7f69551",
         intel: "51e3de2b3d85e5afdd2d520985852888989d8f928804e26a26021643c5d141f7"

  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos-#{arch}.dmg"
  name "DBeaver Community Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  livecheck do
    url "https://github.com/dbeaver/dbeaver"
    strategy :github_latest
  end

  app "DBeaver.app"

  uninstall signal: ["TERM", "org.jkiss.dbeaver.core.product"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/org.jkiss.dbeaver.core.product.plist",
    "~/Library/Saved Application State/org.jkiss.dbeaver.core.product.savedState",
  ]
end
