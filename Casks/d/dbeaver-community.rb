cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.2.1"
  sha256 arm:   "08444d66281326a05c99b7ebd542d447a9e8ba592f0bb6e4e9b84dc290aaf45a",
         intel: "2df9597376a4aa4ed038116487fd2b6443d6928451c4c8d2f44d0e1538c40790"

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
