cask "dbeaver-community" do
  version "7.2.0"
  sha256 "11090bd1d075b661a3517fec1b572c706a4c1553e65e6e4eda85fa693a6590b2"

  # github.com/dbeaver/dbeaver/ was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast "https://github.com/dbeaver/dbeaver/releases.atom"
  name "DBeaver Community Edition"
  desc "Free universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  app "DBeaver.app"

  caveats do
    depends_on_java "8+"
  end
end
