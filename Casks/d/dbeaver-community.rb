cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.2.2"
  sha256 arm:   "10d4f01c1cbf9bc136842d311c55fa072c1e3a48d1f510fe7a6039b4c4e2e266",
         intel: "5dc1e8ce7f243073bfd375e49f0a873c239a34d4908ba554e7f562a4f4fb86b7"

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
