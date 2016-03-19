cask 'dmhy' do
  version '1.2'
  sha256 '70bccf20c1ac24796ccb077e4589aaca603553a394ab0e5f16414788dcbebdec'

  url "https://github.com/yaqinking/DMHY/releases/download/v#{version}/DMHY.app.zip"
  name 'DMHY'
  homepage 'https://github.com/yaqinking/DMHY'
  license :mit

  app 'DMHY.app'
end
