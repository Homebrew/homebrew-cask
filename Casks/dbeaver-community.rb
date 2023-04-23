cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.0.3"
  sha256 arm:   "d5592b0bff8bf0a2dce307121a1ca8c474e7f315a65e9e290f57692f66fe1c97",
         intel: "03c7106df3ea7b50104115e44895072c1b3260280570bd4c089818a06dd689e6"

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
