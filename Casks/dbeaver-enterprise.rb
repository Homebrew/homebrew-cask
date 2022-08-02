cask "dbeaver-enterprise" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "22.1.0"

  if Hardware::CPU.intel?
    sha256 "0d7392dcb7f220fd77680388a3578684e63983efe6b2691f16dc3d1471883e3f"
  else
    sha256 "026cfcdca2d619821f3a7d41f8ae36f8f6e1e3c294897311be203f0581b69b98"
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
