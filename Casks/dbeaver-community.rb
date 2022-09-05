cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.2.0"
  sha256 arm:   "166bcf6186790f098395e14a4713063df4d7de2a1d359543fe6040240b7c346c",
         intel: "5d972b98dee5fc2a9e9310bcab599b4773bb1348f18f4620b988fb10256e6d69"

  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos-#{arch}.dmg"
  name "DBeaver Community Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  livecheck do
    url "https://github.com/dbeaver/dbeaver"
    strategy :github_latest
  end

  app "DBeaver.app"

  uninstall signal: ["TERM", "org.jkiss.dbeaver.core.product"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/org.jkiss.dbeaver.core.product.plist",
    "~/Library/Saved Application State/org.jkiss.dbeaver.core.product.savedState",
  ]
end
