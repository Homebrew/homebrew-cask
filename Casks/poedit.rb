cask :v1 => 'poedit' do

  if MacOS.release <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'
    url "http://heanet.dl.sourceforge.net/project/poedit/poedit/#{version.sub(/.\d+$/,'')}/poedit-#{version}.dmg"
  else
    version '1.7.1'
    sha256 '3524a0a1ab135215b21b26b87bb8fcd93167ff2eb2bfcd7c2873b1eb4f4276eb'
    url "http://poedit.net/dl/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            :sha256 => '2adf2168b23ee56ee1d237a511a2cb13e116f44c567948fbf265fcffa1b4e667'
  end

  homepage 'http://www.poedit.net'
  license :mit

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
