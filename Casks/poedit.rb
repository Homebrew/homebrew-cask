cask :v1 => 'poedit' do

  if MacOS.release <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'

    url "http://poedit.net/dl/poedit-#{version}.dmg"
  else
    version '1.8.4'
    sha256 '2820fb30833a63b6a6311215dd68b4e5aba18854ac998481b80430f8ae748132'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            :sha256 => 'f5578c3b403179adc8defd416df7660470dbae1c51bf84c2f39eef20ca54e345'
  end

  name 'Poedit'
  homepage 'http://www.poedit.net'
  license :mit

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
