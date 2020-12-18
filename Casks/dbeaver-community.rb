cask "dbeaver-community" do
  version "7.3.0"
  sha256 "86c95939171b41f3eb93741ed2c9d78abeaa283a8aa83a140f52afabbdd67069"

  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg",
      verified: "github.com/dbeaver/dbeaver/"
  appcast "https://github.com/dbeaver/dbeaver/releases.atom"
  name "DBeaver Community Edition"
  desc "Free universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  app "DBeaver.app"

  caveats do
    depends_on_java "8+"
  end
end
