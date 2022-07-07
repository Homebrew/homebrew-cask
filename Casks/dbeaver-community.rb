cask "dbeaver-community" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "22.1.1"

  if Hardware::CPU.intel?
    sha256 "8f3910a3650dcdde9c0b3768393608f2e5858e2f1b1c0f30e2864f3fbd298796"
  else
    sha256 "b2863034afc07eb73027c3e8f0b843b040bde301f255d444fded32c79c1b26c6"
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
