cask 'dbeaver-enterprise' do
  version '4.3.0'
  sha256 'f61b27edd045cd5b55eb0170d6a004e0d52131e6364ed0b86a958369875e85b9'

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
