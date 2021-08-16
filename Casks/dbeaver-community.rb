cask "dbeaver-community" do
  version "21.1.5"
  sha256 "efc5242165b37fa47dcefd4ece408eac460826eba19530dc17dd81b2edb96407"

  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name "DBeaver Community Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  livecheck do
    url "https://github.com/dbeaver/dbeaver"
    strategy :github_latest
  end

  app "DBeaver.app"
end
