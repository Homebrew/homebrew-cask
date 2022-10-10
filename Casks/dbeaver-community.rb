cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.2.2"
  sha256 arm:   "def1b9f89c82bb040bff8d477ae53af79e9e9650f81d0b423d0ef95f47574844",
         intel: "ff0a782501b1272816ee621066edc2abc5377561db0497d7542e76a059caede3"

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
