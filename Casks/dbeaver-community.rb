cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.1.4"

  if Hardware::CPU.intel?
    sha256 "fb468daed2cb968b358bffef92db7642dc6a52b12e32c158b90d52d11416ceac"
  else
    sha256 "8fdd802a859f8c57ea729e22dfdb01831c59e97819372a0000dbc3064771bc8a"
  end

  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos-#{arch}.dmg"
  name "DBeaver Community Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  livecheck do
    url "https://github.com/dbeaver/dbeaver"
    strategy :github_latest
  end

  app "DBeaver.app"

  uninstall signal: ["TERM", "org.jkiss.dbeaver.core.product"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/org.jkiss.dbeaver.core.product.plist",
    "~/Library/Saved Application State/org.jkiss.dbeaver.core.product.savedState",
  ]
end
