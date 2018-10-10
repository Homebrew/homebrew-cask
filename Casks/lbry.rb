cask 'lbry' do
  version '0.25.0'
  sha256 '524c713406dd2d6f8bd12ef01d0d5922e3912455dfcd02e87681f95ce27e63e4'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
