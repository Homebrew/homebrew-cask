cask "dbeaver-enterprise" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "21.3.0"

  if Hardware::CPU.intel?
    sha256 "7ecea0a249b619c4f6e20ceebc43222b518d8b6e7a28f5cbfdc8bd25dc36dbe6"
  else
    sha256 "9a6b16c0d5972cec2d5a1eb58d342db933f1f1a60c3cc2c1cda3755de841f3a0"
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
