cask 'dbeaver-community' do
  version '5.3.1'
  sha256 '3a8809496b35c8cf2c6fb912754aa009dc4bcd1b9c2e201d7866e1b3c9227e16'

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
