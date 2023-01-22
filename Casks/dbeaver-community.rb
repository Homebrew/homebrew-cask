cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.3.2"
  sha256 arm:   "31706e9e6dd5c13ea1fd506d24635a25baf0bf52bcc7e835180c774a4e6a859d",
         intel: "ca0ef3b781f29f6c09b9c96c1bc090034a3ce88af9db76bf12d2cc5a4d0527fa"

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
