class MendeleyDesktop < Cask
  version '1.12.1'
  sha256 '81418c72dee7b6f19e0d579c903bef3d15be0f08eb96c1c0b5c9f32cb7cf062c'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  homepage 'http://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
