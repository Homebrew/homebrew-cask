cask "dbeaver-community" do
  version "21.1.0"
  sha256 "d8500c45917480c2532db584e0470b9c015abd25a09ce68beafd7a70dba3c3ff"

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
