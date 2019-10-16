cask 'mockoon' do
  version '1.5.1'
  sha256 'c61f1312581b729ba3e710a84a8c9101461e39da709b2e81488a25432fde5d2a'

  # github.com/mockoon/mockoon was verified as official when first introduced to the cask
  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg"
  appcast 'https://github.com/mockoon/mockoon/releases.atom'
  name 'Mockoon'
  homepage 'https://mockoon.com/'

  auto_updates true

  app 'Mockoon.app'
end
