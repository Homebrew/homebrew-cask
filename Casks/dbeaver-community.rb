cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.2.0"
  sha256 arm:   "e32bf138b83973917c1c6ef66c8bd374565a24621edf56f8b19eac3eca71f176",
         intel: "3851ca21e4569357dbc3b7063fd69536dd02dad4e620514288505f87498d8859"

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
