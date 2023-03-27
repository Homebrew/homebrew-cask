cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.0.1"
  sha256 arm:   "e4c7cc434d288d86059ad292528458641571ab67e96b4e37ddd3642cec67a801",
         intel: "b1a4b67bc11faa24ec2acfab21d28cf036e97cd4b4d5166e9ec0b6442ea863a5"

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
