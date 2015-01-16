cask :v1 => 'poedit' do

  if MacOS.release <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'
    url "http://heanet.dl.sourceforge.net/project/poedit/poedit/#{version.sub(/.\d+$/,'')}/poedit-#{version}.dmg"
  else
    version '1.7.3'
    sha256 'b0dceeaee4e0085a0d17663cf224f24ada6773f704babf1dcf9b9d193f0db3a9'
    url "http://poedit.net/dl/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            :sha256 => '820f8d55035f0c57f2c57d7441abd7fdf96db1c1818697a188daecd53a98796e'
  end

  homepage 'http://www.poedit.net'
  license :mit

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
