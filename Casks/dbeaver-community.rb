cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.0.3"
  sha256 arm:   "ecce3eb5e84ff773675e92a67db0f799cc290bd9bbd744df1008dad5fd1232ea",
         intel: "d41e3f2cc44b30fc74a0870e9afd819e6f674887d024ca8f3bf8bce64ae0866f"

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
