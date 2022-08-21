cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.1.5"

  on_intel do
    sha256 "81d2f1cbbe40d6bc6ad1f8b442a3f1d384a77a06cf3d694153679d32d6b9f8f2"
  end
  on_arm do
    sha256 "ec2f141678c659b1616af38d345642f1619e5e42272969ab9cbdcca9bba790fa"
  end

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
