cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.3.0"
  sha256 arm:   "cafad8c7d2d8a6121b05c6da561e0492f95cc35c76eabc58e68c489a36eaa431",
         intel: "0db6760487c4fa68eed0ca2057451dd40c21ec85e6f4dd83afe84d40d456c2de"

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
