cask "dbeaver-enterprise" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "22.0.0"

  if Hardware::CPU.intel?
    sha256 "e4f85920f8e4aedd2aaf439ca830f5571e3a60183791bfcbfa501b1631fd847f"
  else
    sha256 "bbd3b7b82515ed2153ddc9422a3944e3498bb392a5034b9d45a352e56926aa2b"
  end

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos-#{arch}.dmg"
  name "DBeaver Enterprise Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/"

  livecheck do
    url "https://dbeaver.com/product/version.xml"
    regex(%r{<number[^>]*?>v?(\d+(?:\.\d+)+)</number>}i)
  end

  app "DBeaverEE.app"

  uninstall signal: ["TERM", "com.dbeaver.product.enterprise"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.enterprise.plist",
    "~/Library/Saved Application State/com.dbeaver.product.enterprise.savedState",
  ]
end
