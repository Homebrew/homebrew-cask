cask "dbeaver-community" do
  version "7.1.4"
  sha256 "ce57517fa664188f50e186ff22b39ac63123c68230aa62b3c01b924abc3c6ff3"

  # github.com/dbeaver/dbeaver/ was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast "https://github.com/dbeaver/dbeaver/releases.atom"
  name "DBeaver Community Edition"
  homepage "https://dbeaver.io/"

  app "DBeaver.app"

  caveats do
    depends_on_java "8+"
  end
end
