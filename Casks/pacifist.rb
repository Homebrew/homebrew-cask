cask 'pacifist' do
  version '3.6.2'
  sha256 'e8bd4595462e2cb6f900705ef69fdc9f044aea1e2759e347c3e9667c757fd6af'

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  appcast 'https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi'
  name 'Pacifist'
  homepage 'https://www.charlessoft.com/'

  auto_updates true

  app 'Pacifist.app'
end
