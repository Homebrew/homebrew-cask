cask "dbeaver-community" do
  version "21.1.4"
  sha256 "a2f35f333fff3aab1fe432eb41126211d3f000c6f11a428597508805c7d3d663"

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
