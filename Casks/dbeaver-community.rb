cask "dbeaver-community" do
  version "7.3.3"
  sha256 "1e9402c0d6ce5888ab96f71fc5683399d905146c575dda9de945f5ad321c8da7"

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
