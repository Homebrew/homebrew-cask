cask 'mountain' do
  version '1.6.4'
  sha256 '7290dca93600e5c59cf797cae3f3bd874f2d9d79811969b9dad8586cf2a5c53f'

  url 'https://appgineers.de/mountain/files/Mountain.zip'
  appcast 'https://appgineers.de/mountain/files/mountaincast.xml',
          checkpoint: '26376efb3510b4804c540a105616362ae6fc009dd1aa85f99ea943bb27e88945'
  name 'Mountain'
  homepage 'https://appgineers.de/mountain/'

  depends_on macos: '>= :snow_leopard'

  app 'Mountain.app'
end
