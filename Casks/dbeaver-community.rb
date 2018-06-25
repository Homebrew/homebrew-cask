cask 'dbeaver-community' do
  version '5.1.1'
  sha256 '929e7b0e5ad048a4cae60741e65e99f442e8edcf27fb29b00d1f3c6821411bc9'

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
