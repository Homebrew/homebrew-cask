cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.0.0"
  sha256 arm:   "77ff55544a5464419a851495fa026066ae5db6a510383846be5214ff469d932f",
         intel: "9ff8204153f61ed0227917c66a7bd7b04b527e0f0504264b4428874a53598aa0"

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
