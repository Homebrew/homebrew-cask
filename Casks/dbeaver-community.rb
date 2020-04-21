cask 'dbeaver-community' do
  version '7.0.3'
  sha256 '51d78aad9a6acc34668c3a53dd01353feb65e98b42d143a966379c7e8365be88'

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
