cask 'dbeaver-community' do
  version '7.0.0'
  sha256 '99106db3d800955cefaee63faf884b394b53f85c3f7730151e3e9cdf0ce4c61b'

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
