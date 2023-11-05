cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.2.4"
  sha256 arm:   "31ae05b25d967f6b2f39b8f45c5a36e712f21a3a6cf50a7122e1bacf49b97c47",
         intel: "a51ae7765d336021534a4c44b39365a5bcae89b1d8f3d3ba6c0b47628a70aa19"

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
