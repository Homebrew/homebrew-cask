cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.2.5"
  sha256 arm:   "78f055daa897cfa95ba007a4e44e861f091d65ff6dbc3dd1f0bc21afd6591cdd",
         intel: "e265d1d22f065d5cdb79d35b5c97cc2670727a6aa5acce39cd03035f25dc40c5"

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
