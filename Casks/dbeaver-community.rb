cask "dbeaver-community" do
  version "21.1.0"
  sha256 "dec806a96ea9609e45357ca31685e39495973d22ee1612099b73756cfe740573"

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
