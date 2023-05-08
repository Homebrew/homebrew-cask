cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.0.4"
  sha256 arm:   "76d8fceedb87197c1d4d9f6cd3fb652626ad9f0af5a3e58728d4cc6065ab68c9",
         intel: "9a250b7489b51a15a0f320db2807f61bf87c3ec36f911cbcd20f93cce6456459"

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
