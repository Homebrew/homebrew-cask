cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.2.4"
  sha256 arm:   "f9948527f822e011fd9a531ec76c2c45762fc654c09b271714acc3f4d5edb51a",
         intel: "445675daaec0d31137fcec34de085d00e0c49f9a1cd8ba3a32a1c20d03d0e409"

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
