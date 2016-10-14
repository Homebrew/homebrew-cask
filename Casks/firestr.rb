cask 'firestr' do
  version '0.10'
  sha256 'a6d436a2095132382c059376e2d05a53390793abf3916a6a68c7e9d3d98cee26'

  url "https://mempko.com/firestr/build/#{version}/firestr_#{version}.dmg"
  name 'Firestar'
  name 'Fire★'
  homepage 'https://mempko.com/firestr/firestr.html'

  app 'Firestr.app'
end
