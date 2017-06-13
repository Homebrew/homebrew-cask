cask 'kakapo' do
  version '1.3.0'
  sha256 '4f89f2d651b88e7c13bce3cccefc4929e83a5f509dae102f071ecd80aab9d524'

  # github.com/bluedaniel/Kakapo-app was verified as official when first introduced to the cask
  url "https://github.com/bluedaniel/Kakapo-app/releases/download/v#{version}/Kakapo-#{version}-Mac.zip"
  appcast 'https://github.com/bluedaniel/Kakapo-app/releases.atom',
          checkpoint: '5f7ac5a61e63d1547b2427945a6744c5381d7b21269dee019e15ec0d3fc06ef2'
  name 'Kakapo'
  homepage 'http://www.kakapo.co/app.html'

  app 'Kakapo.app'
end
