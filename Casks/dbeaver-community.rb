cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.1.1"
  sha256 arm:   "948a4bd73a322a79aac9439b6bab959ef32885bd86d42a67debb3855ebf43e4b",
         intel: "4efd5dd11c7995adfbef880f419c4ad95a59f1b78f6e047a2f79d0a4fe694232"

  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos-#{arch}.dmg"
  name "DBeaver Community Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  livecheck do
    url "https://github.com/dbeaver/dbeaver"
    strategy :github_latest
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
