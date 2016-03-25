cask 'senuti' do
  version '1.3.3'
  sha256 '23bf22a7c468753ab71a6464d920f05223a093ec17bc9e3a7d3be8ea6913474f'

  url "https://www.fadingred.com/files/senuti/senuti_#{version}.zip"
  appcast 'https://www.fadingred.com/senuti/updates.xml',
          checkpoint: '1f3cce3174440e69a0333f342a64637be122caef4d8bcbedcf34728e4c747e7c'
  name 'Senuti'
  homepage 'https://www.fadingred.com/senuti/'
  license :commercial

  app 'Senuti.app'
end
