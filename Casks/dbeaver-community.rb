cask 'dbeaver-community' do
  version '5.2.0'
  sha256 '6e5dbc6cd87fde87d94ad072f58cecf1361d0b26cd56772e207d1b432ecea3a4'

  # currently (2018-09-12) the only available bin repo is https://dbeaver.io/files/
  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://dbeaver.io/category/releases/'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.io/'

  app 'DBeaver.app'

  caveats do
    depends_on_java '8+'
  end
end
