cask "dbeaver-community" do
  version "21.2.0"
  sha256 "2a45a1304a4cab9f800ebea205812a1dfaf4a42ee0c05b82df8034918513661d"

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
