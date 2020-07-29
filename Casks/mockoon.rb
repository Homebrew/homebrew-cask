cask 'mockoon' do
  version '1.8.0'
  sha256 '5c9d951a26acb33584cf1a1ceaf374ada52428a440efb6070edfed1ac448678e'

  # github.com/mockoon/mockoon/ was verified as official when first introduced to the cask
  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg"
  appcast 'https://github.com/mockoon/mockoon/releases.atom'
  name 'Mockoon'
  homepage 'https://mockoon.com/'

  auto_updates true

  app 'Mockoon.app'
end
