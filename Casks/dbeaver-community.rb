cask "dbeaver-community" do
  version "7.3.5"
  sha256 "953e96c1794f5b58dc10045cba799817136590ab66b88657a6f188d314d5a70b"

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
