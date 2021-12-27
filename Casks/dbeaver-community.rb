cask "dbeaver-community" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "21.3.2"

  if Hardware::CPU.intel?
    sha256 "8278253d121e1c74645ed302263dd340f61fadd075c9d676732c248b47011f26"
  else
    sha256 "663a64321f364c20f0da4e614eac1c1a88065ed595db146fa22b85d245f65ec3"
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

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/org.jkiss.dbeaver.core.product.plist",
    "~/Library/Saved Application State/org.jkiss.dbeaver.core.product.savedState",
  ]
end
