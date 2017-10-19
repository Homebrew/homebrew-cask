cask 'dbeaver-enterprise' do
  version '4.2.0'
  sha256 'be79572cdabee2ba108a8a50ff42dea7d9bb6b9061ddaeaf22e2c9ac4b4c886c'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/files/',
          checkpoint: '476f8e064acf08b2c082c65c88709abea20ea6b019e861f91df25320cd2f636e'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
