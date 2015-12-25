cask 'gity' do
  version :latest
  sha256 :no_check

  url 'http://gityapp.com/Gity.zip'
  appcast 'http://gityapp.com/gity.xml',
          :sha256 => '4adb44b3cd6fe503d218067307302628c3a0a895acfe03998c24c8f3d561dd15'
  name 'Gity'
  homepage 'http://gityapp.com/'
  license :gpl

  app 'Gity.app'
end
