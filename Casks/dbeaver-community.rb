cask "dbeaver-community" do
  version "21.0.1"
  sha256 "6eaed8a58f4f27f11a32dd65f415e27291bc65c844a1cbb4c5ee4c9cf1335fb4"

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
