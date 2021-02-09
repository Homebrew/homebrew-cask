cask "dbeaver-community" do
  version "7.3.4"
  sha256 "47ee7dd81a5fa710e2b497026bd2df114e69320aa9c125e6cbd8a0931cc385d4"

  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast "https://github.com/dbeaver/dbeaver/releases.atom"
  name "DBeaver Community Edition"
  desc "Free universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  app "DBeaver.app"

  caveats do
    depends_on_java "8+"
  end
end
