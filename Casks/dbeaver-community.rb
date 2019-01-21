cask 'dbeaver-community' do
  version '5.3.3'
  sha256 '0d88604fc5aae3ba04692ba0314b73f7b798078d58b0fc9f3e3e5b00bcecc503'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java '8+'
  end
end
