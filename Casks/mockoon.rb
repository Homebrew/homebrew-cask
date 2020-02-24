cask 'mockoon' do
  version '1.7.0'
  sha256 'b0fe241a107cd2af68a23ce9ea5864a1f153ddcf69dbbb71ce60a816f01d53b2'

  # github.com/mockoon/mockoon was verified as official when first introduced to the cask
  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg"
  appcast 'https://github.com/mockoon/mockoon/releases.atom'
  name 'Mockoon'
  homepage 'https://mockoon.com/'

  auto_updates true

  app 'Mockoon.app'
end
