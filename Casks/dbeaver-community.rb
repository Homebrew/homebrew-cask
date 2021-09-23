cask "dbeaver-community" do
  version "21.2.1"
  sha256 "cee5952febdcb970fc56a1658ccb8de99ebf26093d1a0fdbec36fc6983bf0b98"

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
