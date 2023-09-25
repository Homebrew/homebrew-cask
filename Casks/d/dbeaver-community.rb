cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.2.1"
  sha256 arm:   "b7bd7b9619067dc46ad5ec8b2bafa7e5e510f82913c0703b798bffcdd9958c0b",
         intel: "b86ae1a5e9e1e16022e46f6d9d52c3607d712fe37d36a994cd6e9dfbc76103fa"

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
