cask 'dbeaver-enterprise' do
  version '3.8.2'
  sha256 '8061dfcebf357586938e0f89bbd774a0fc9cd501afa1cef218e5754b529d9f70'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'http://dbeaver.jkiss.org/files/',
          checkpoint: '248a14eb2cac6358f84b3043f226f9a06125ae2c4a3a497d59fd133652a56842'
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'Dbeaver.app'
end
