cask 'dbeaver-enterprise' do
  version '6.2.0'
  sha256 '5a8163c19fd6c8890fde316c0ef4c9d3c65303aaa4424e50539c07df32206f3c'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
