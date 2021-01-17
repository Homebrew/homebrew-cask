cask "dbeaver-community" do
  version "7.3.2"
  sha256 "9b455917657d6f45c67668242e76ff29a633d3474fd814949420371985bd348f"

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
