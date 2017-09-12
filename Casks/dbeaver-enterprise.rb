cask 'dbeaver-enterprise' do
  version '4.2.0'
  sha256 'be79572cdabee2ba108a8a50ff42dea7d9bb6b9061ddaeaf22e2c9ac4b4c886c'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/files/',
          checkpoint: '3c4c8b473915ee3d7a2b78d96c1ba171be65af702377c21ca98aa27374d76cf4'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'Dbeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
