cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.1.3"
  sha256 arm:   "262fa3efa5c461090edb690e0afdabc5a8208c287fb3dbe64e9035d9af145986",
         intel: "f4d9975da67a350d80ac850afd93ce9d155db0446fa72e0c2d8c3eff8ba0c090"

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
