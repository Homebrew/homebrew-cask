cask "dbeaver-community" do
  version "21.1.3"
  sha256 "39fed978f06a83ca7a50dcd64ec9251ceab7f148370a5ad6e1c0d2a0f8d8afe3"

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
