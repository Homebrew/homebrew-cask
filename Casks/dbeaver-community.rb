cask 'dbeaver-community' do
  version '7.1.2'
  sha256 '52c3dd40939852a9af0963af0ae57673f8bd3386d5680551495237f68fb47f6d'

  # github.com/dbeaver/dbeaver/ was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.io/'

  app 'DBeaver.app'

  caveats do
    depends_on_java '8+'
  end
end
