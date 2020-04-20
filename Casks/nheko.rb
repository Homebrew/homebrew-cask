cask 'nheko' do
  version '0.7.0'
  sha256 '455d4c554eed7830119a6e6480a90d5c09dbab0590a5ea17cd75cb154556e10b'

  # github.com/Nheko-Reborn/nheko/ was verified as official when first introduced to the cask
  url "https://github.com/Nheko-Reborn/nheko/releases/download/v#{version}/nheko-v#{version}.dmg"
  appcast 'https://github.com/Nheko-Reborn/nheko/releases.atom'
  name 'Nheko'
  homepage 'https://nheko-reborn.github.io/'

  app 'Nheko.app'
end
