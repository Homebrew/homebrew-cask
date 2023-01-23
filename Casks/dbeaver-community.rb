cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.3.3"
  sha256 arm:   "27413943452ac789a5c122f27867800ee4c547f6f85de2a85ab31de59a603ab6",
         intel: "cb6c12f177bea5d10906e7a291f1bbd2943870426dfac23cea43364ab5659da9"

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
