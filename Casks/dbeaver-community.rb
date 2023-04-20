cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.0.2"
  sha256 arm:   "d424cb78183775eb7194aff58e309ef5e521b6ad72ad9ec37595f04487e1f9a5",
         intel: "b4ecc3e04e35a50df0ac40487b29dd130911d951737b27675271d03d421ad0a0"

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
