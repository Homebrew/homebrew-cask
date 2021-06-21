cask "dbeaver-community" do
  version "21.1.1"
  sha256 "1b78981687562609cbc1e162644a1a1313b6d2b76ee1b2fc161d5bde0257a25b"

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
