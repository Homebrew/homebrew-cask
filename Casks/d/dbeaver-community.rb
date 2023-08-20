cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.1.5"
  sha256 arm:   "72a48359673109a95e739f170423493d092482bebe157c483d52eca0ecb83699",
         intel: "c84d1fea5ec7532874ccd3899b2c46ebcf5b84f337ec5f2aeebe08858021e09c"

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
