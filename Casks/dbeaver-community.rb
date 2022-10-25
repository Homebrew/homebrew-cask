cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.2.3"
  sha256 arm:   "25d17d29bf3a226b3c31a870c0293a2bb8dfd35e27422de263d841f07cefa1ce",
         intel: "7c5081d56418c52b2e32673425705177e3d194d76601115fafc894d93a9b595c"

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
