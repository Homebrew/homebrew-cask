cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.2.5"
  sha256 arm:   "68e283cfe202dbbc3acc6e18cfdcbba201a8230bbe427cf08fe01821d70e1802",
         intel: "1cca1241c8e569e1296c237352672846d51fd3a8e2d0a27a5f06a20b11178137"

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
