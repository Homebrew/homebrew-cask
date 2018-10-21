cask 'mockoon' do
  version '1.1.0'
  sha256 '45c6580798a2512ddfbff47dc6b979db5d9260779e0dedae1ab05e58d3586b3c'

  # github.com/255kb/mockoon was verified as official when first introduced to the cask
  url "https://github.com/255kb/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg"
  appcast 'https://github.com/255kb/mockoon/releases.atom'
  name 'Mockoon'
  homepage 'https://mockoon.com/'

  auto_updates true

  app 'Mockoon.app'
end
