cask 'dbeaver-community' do
  version '6.3.2'
  sha256 '3f00962c0e3ba18719ea615f463909b4ba73b85da673bcb395671bd04a3a53f7'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.io/'

  app 'DBeaver.app'

  caveats do
    depends_on_java '8+'
  end
end
