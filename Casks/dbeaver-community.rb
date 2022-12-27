cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.3.1"
  sha256 arm:   "966d05a80e34b8dc5abc100a07654c466c2a229177cd6364c9027e2b9c33ae55",
         intel: "1be9db3efacb098a0ab0e54b977732149215472f8ecbf12b2553256b6a6a7120"

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
