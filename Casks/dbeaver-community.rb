cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.1.2"
  sha256 arm:   "8cb1f78a74749c4cc62923ed9eaf2c88c4a41bc7a99ab7f36f728b1d2a1db155",
         intel: "dcc07882c641ae2a38a69d3e5d6c76159cfb818f839184e069a37b546d0507bb"

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
