cask "dbeaver-community" do
  version "7.3.1"
  sha256 "7ae2943476bcf66dd315cbf1af9a9b7a6f0230c55b0c3c7e0aa0c2cde02b25df"

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
