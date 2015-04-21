cask :v1 => 'poedit' do

  if MacOS.release <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'
    # sourceforge.net is the official download host per the vendor homepage
    url "http://downloads.sourceforge.net/sourceforge/poedit/poedit-#{version}.dmg"
  else
    version '1.7.4'
    sha256 'e08b1a3ffc791b78ca849bf3fdbbd9dd7cbb8944032a5bdec642560ee6118c34'
    url "http://poedit.net/dl/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            :sha256 => '21334ec300dff8fd749f1351f1a96880091bb58bc41d2a9de9179f8d42f5602d'
  end

  name 'Poedit'
  homepage 'http://www.poedit.net'
  license :mit

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
