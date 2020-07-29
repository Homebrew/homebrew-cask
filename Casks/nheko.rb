cask 'nheko' do
  version '0.7.2'
  sha256 '75bc8fe8fbaed333a205ca37bd64d8f69dc419197d26c7e7017f2cadc622cc8a'

  # github.com/Nheko-Reborn/nheko/ was verified as official when first introduced to the cask
  url "https://github.com/Nheko-Reborn/nheko/releases/download/v#{version}/nheko-v#{version}.dmg"
  appcast 'https://github.com/Nheko-Reborn/nheko/releases.atom'
  name 'Nheko'
  homepage 'https://nheko-reborn.github.io/'

  app 'Nheko.app'
end
