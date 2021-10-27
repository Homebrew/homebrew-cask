cask "dbeaver-community" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "21.2.3"

  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "269711ee5f8902fc3f2bff314d6b7377c38316b8474db3851857d63fbe5663c4"
  else
    sha256 "6c476e0e64c10233812d0a2976284991ec8258f2147e0165b65398dca2f52b91"
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
