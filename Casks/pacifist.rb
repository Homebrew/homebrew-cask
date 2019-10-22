cask 'pacifist' do
  version '3.6.1'
  sha256 'a884c8c0d16ca159bf7f90064247d7c00f4ebbd54ac86028bb57c0cbf666cf2a'

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  appcast 'https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi'
  name 'Pacifist'
  homepage 'https://www.charlessoft.com/'

  auto_updates true

  app 'Pacifist.app'
end
