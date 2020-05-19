cask 'nheko' do
  version '0.7.1'
  sha256 '29e96ae7368744d813ea38c7bee99099859f59cc977f8ba128ec701f72e3aa84'

  # github.com/Nheko-Reborn/nheko/ was verified as official when first introduced to the cask
  url "https://github.com/Nheko-Reborn/nheko/releases/download/v#{version}/nheko-v#{version}.dmg"
  appcast 'https://github.com/Nheko-Reborn/nheko/releases.atom'
  name 'Nheko'
  homepage 'https://nheko-reborn.github.io/'

  app 'Nheko.app'
end
