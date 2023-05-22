cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.0.5"
  sha256 arm:   "56943e66b3ffa890ac724b80096a2508db95da5564376493db0b263661dc2e19",
         intel: "dce1064cf56eaff9d381802aacb05e8fe80349035d6c931f8984b543388d6a9e"

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
