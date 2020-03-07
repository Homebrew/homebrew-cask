cask 'nheko' do
  version '0.6.4'
  sha256 '1214025539bfbbcb4f0808efe1c6f49f478171d8ce9dceb786dfc200f8755546'

  # github.com/Nheko-Reborn/nheko was verified as official when first introduced to the cask
  url "https://github.com/Nheko-Reborn/nheko/releases/download/v#{version}/nheko-v#{version}.dmg"
  appcast 'https://github.com/Nheko-Reborn/nheko/releases.atom'
  name 'Nheko'
  homepage 'https://nheko-reborn.github.io/'

  app 'Nheko.app'
end
