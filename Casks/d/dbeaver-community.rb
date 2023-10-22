cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.2.3"
  sha256 arm:   "b5b3e781e28f6d205566ac717f6cf2a0ee2c0409150c9f29a29516bc48e22fce",
         intel: "7eea3b60f42949032d4b2f9c5098e7ad63f9519657d3f76b5b66218c426f19d9"

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
