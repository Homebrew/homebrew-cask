cask "dbeaver-community" do
  version "21.0.4"
  sha256 "8ec56e03bbdd77458f5d9eabfe400129e0e09b4ec6b0378c2c51e3b4e3c4314c"

  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name "DBeaver Community Edition"
  desc "Free universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  livecheck do
    url "https://github.com/dbeaver/dbeaver"
    strategy :github_latest
  end

  app "DBeaver.app"

  caveats do
    depends_on_java "8+"
  end
end
