cask "dbeaver-community" do
  version "7.2.5"
  sha256 "4a9e94ca1a4b5db223fe5ef45ea1711c84b2b552cbee3f84ec4ca0438d4c8028"

  # github.com/dbeaver/dbeaver/ was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast "https://github.com/dbeaver/dbeaver/releases.atom"
  name "DBeaver Community Edition"
  desc "Free universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  app "DBeaver.app"

  caveats do
    depends_on_java "8+"
  end
end
