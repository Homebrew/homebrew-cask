cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.1.4"
  sha256 arm:   "28b71c19fdd1244ee9cab284f4dae52ac4f233e110e1309cd94c9845ac332237",
         intel: "4c10ee65f96688084ca0ae0302948b209879d8edade6a273b31d9e28f16c59fd"

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
