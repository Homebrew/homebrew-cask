cask "dbeaver-community" do
  version "21.2.2"

  if Hardware::CPU.intel?
    sha256 "985489c389c9cf56d8bd795ac72598d6c4361eb71c1cc13942bc838734befed8"
    url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos-x86_64.dmg"
  else
    sha256 "3190457fe92c5f1c1668b8b8813e632f6cbbc0e0ce48264b326ef6531fcbe6a3"
    url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos-aarch64.dmg"
  end

  name "DBeaver Community Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  livecheck do
    url "https://github.com/dbeaver/dbeaver"
    strategy :github_latest
  end

  app "DBeaver.app"

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/org.jkiss.dbeaver.core.product.plist",
    "~/Library/Saved Application State/org.jkiss.dbeaver.core.product.savedState",
  ]
end
