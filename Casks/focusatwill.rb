cask 'focusatwill' do
  version '1.6.0'
  sha256 '962f2d14724025107849fadbf19d4a014e04df6bf7700f25b0df222b38d9a712'

  # faw-desktop.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://faw-desktop.s3.amazonaws.com/focusatwill-#{version}.dmg"
  appcast 'https://faw-desktop.s3.amazonaws.com/latest-mac.yml'
  name 'Focus@Will'
  homepage 'https://www.focusatwill.com/'

  app 'focusatwill.app'
end
