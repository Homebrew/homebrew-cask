cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.2.0"
  sha256 arm:   "cc22ebe124974ad993815a5cd5b918be660ee3c0dd84b1f8b839a5e11491f1f9",
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
