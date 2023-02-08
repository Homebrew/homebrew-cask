cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.3.4"
  sha256 arm:   "ff8cbbfa29e33520485774d2c7a159811f8ff81dfc324e8032c054e0dc81cb07",
         intel: "8e01af13b32acf53377f32e940ae0cdf00f6967c723e46fed70adb225cc11d0b"

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
