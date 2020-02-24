cask 'dbeaver-enterprise' do
  version '6.3.0'
  sha256 '3fd13e4c37c23709dc4dcfe27b4459c73c0522ab44414b60692b300ebe79f650'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
