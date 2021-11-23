cask "dbeaver-community" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "21.2.5"

  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "b81fe38f7f4410bcc102fa1a20c3076de1da37427eb2e759aaebda06415fedef"
  else
    sha256 "bd3785d777d54043b564f470d531703328db9ba1306bd9e368d2e05b2ee72966"
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
