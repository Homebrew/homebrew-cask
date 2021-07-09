cask "dbeaver-community" do
  version "21.1.2"
  sha256 "6c56313d2d5c153cee1b6479008d9c1723829ed1066913571d6d40f335d4616e"

  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name "DBeaver Community Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  livecheck do
    url "https://github.com/dbeaver/dbeaver"
    strategy :github_latest
  end

  app "DBeaver.app"
end
