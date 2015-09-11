cask :v1 => 'senuti' do
  version '1.3.3'
  sha256 '23bf22a7c468753ab71a6464d920f05223a093ec17bc9e3a7d3be8ea6913474f'

  url "https://www.fadingred.com/files/senuti/senuti_#{version}.zip"
  appcast 'https://www.fadingred.com/senuti/updates.xml',
          :sha256 => '119e7b3d8ffb2fdb0a16825318e5e8a707ec416617f0466e6c10785a8758db26'
  name 'Senuti'
  homepage 'https://www.fadingred.com/senuti/'
  license :commercial

  app 'Senuti.app'
end
