cask "dbeaver-community" do
  version "21.0.0"
  sha256 "9e0e6dd8248b7a100aa56668684769b1d7d74a667bb516ae60e1fed18eb3e70f"

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
