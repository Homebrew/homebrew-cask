cask "dbeaver-community" do
  version "21.0.3"
  sha256 "c791977ef72976168f3761bdf633802a8b245ed36968b7b42ad169052b5dd068"

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
