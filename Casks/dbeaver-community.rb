cask "dbeaver-community" do
  version "7.1.5"
  sha256 "dd640534d8581e39a864c3750cc44f07f5069b78ad3466ef417406b288ce6069"

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
