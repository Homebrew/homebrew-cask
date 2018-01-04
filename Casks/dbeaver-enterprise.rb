cask 'dbeaver-enterprise' do
  version '4.3.0'
  sha256 '1d52c7fd7d84fdae32597a0ec105ec22e689524a9de67f0d8821ec626e2b94ad'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml',
          checkpoint: '40b5a163ee371231021d31fc7a908ba2ad4a540a2bdcf0dbe83ca870d316eba6'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
