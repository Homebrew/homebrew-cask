cask "dbeaver-community" do
  version "21.0.0"
  sha256 "db25d2369bbfaa452538e56adfa272f2e6dcca08055a2c5eb2a41884d08eb39b"

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
