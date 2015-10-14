cask :v1 => 'soapui' do
  version '5.2.1'
  sha256 '773cb3aaa269e14ed34f06d931b6898e6a8ad16d9d08d67cc4935e137bfbe37c'

  url 'http://cdn01.downloads.smartbear.com/soapui/5.2.1/SoapUI-5.2.1.dmg'
  name 'SmartBear SoapUI'
  homepage 'http://www.soapui.org'
  license :oss

  installer :script => 'SoapUI 5.2.1 Installer.app/Contents/MacOS/JavaApplicationStub',
            :args => %w[-c],
            :input => [
              'o',
              '',
              '',
              '',
              '',
              '',
              '',
              '',
              '',
              '',
              '',
              '1',
              '/Applications',
              '1',
              'n',
              'n',
              'n'
            ]

  # Not installing HermesJMS above, but if we did, add:
  # '/Applications/HermesJMS'
  uninstall :delete => [
    '/Applications/SoapUI-5.2.1.app'
  ]
end
