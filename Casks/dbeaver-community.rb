cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.1.0"
  sha256 arm:   "f8917eb3d15889f76529cca743ad344f9d9aa1d5c1997d25c299d90280905612",
         intel: "ab37cb61e7340c6fc04aa679c3977b6341b85661b7f095e3a2f937852446d85e"

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
