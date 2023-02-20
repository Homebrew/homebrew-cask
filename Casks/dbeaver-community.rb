cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.3.5"
  sha256 arm:   "56a9f5d50bcb381797d6ab7512f154ca5d6a580d59230a2314d1e727f536f3f9",
         intel: "5fd2d811bed5251d235df8547d59cfa27bfa835620f67daa24d0a69be776031d"

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
