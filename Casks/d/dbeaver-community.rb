cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.2.1"
  sha256 arm:   "99154f0858f6919285b1dcda7019e35a4a514ddc0c767ccf592d25c9079b732a",
         intel: "64658eee9a8db98332cff2bc97269471aec9f74ebedc9fc6a0e4ffe7075eda0f"

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
