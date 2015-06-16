cask :v1 => 'firestr' do
  version '0.10'
  sha256 '13174b218589f86cc6c13624fc5ef535addbc39516f9b6f44dbc22e168cc48de'

  url "http://mempko.com/firestr/build/#{version}/firestr_#{version}.dmg"
  name 'Firestr'
  name 'Firestar'
  name 'Fire★'
  homepage 'http://mempko.com/firestr/firestr.html'
  license :gpl

  app 'Firestr.app'
end
