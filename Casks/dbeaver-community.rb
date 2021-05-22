cask "dbeaver-community" do
  version "21.0.5"
  sha256 "0d69f08c2653045b91b22b06157cbbf2fc4c2bf2da7bb49585e4b5498ddc64ac"

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
