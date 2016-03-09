cask 'shimo' do
  version '4.0.5_7199'
  sha256 'e413fedd9dcb0161986433eb26599de07428ef1a2c443b0e9448bb8bc86af504'

  url "https://www.feingeist.io/fg-library/appcasts/Shimo4/Shimo_#{version}.zip"
  name 'Shimo'
  homepage 'https://www.feingeist.io/shimo/'
  license :commercial

  auto_updates true

  app 'Shimo.app'
end
