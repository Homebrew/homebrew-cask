cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.2.0"
  sha256 arm:   "709b3e196bbbd7880855a8b68756129cac24d742d7c66ca3e3d2307dd48e656f",
         intel: "816ce24edf2fba99bbf28513460b5e8abaeffc7cba9895831020ad151433c7da"

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
