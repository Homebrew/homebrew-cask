cask :v1 => 'bandage' do
  version '0.3.0'
  sha256 '9d2fbda1ae8ca46754a48d1270cc770fc0dc916387eeaf37ad03ef311d38ca2d'

  url 'https://github.com/rrwick/Bandage/releases/download/v0.3.0/Bandage_Mac_v0.3.0.zip'
  name 'Bandage'
  homepage 'http://rrwick.github.io/Bandage/'
  license :gpl

  app 'Bandage.app'
end
