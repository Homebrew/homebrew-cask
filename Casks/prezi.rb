cask 'prezi' do
  version '6.8.30'
  sha256 '332137a21b5cbb23d996ba06169b5ddd8e9fba15454e5527b3c0db01adde74fc'

  # prezi-a.akamaihd.net was verified as official when first introduced to the cask
  url "https://prezi-a.akamaihd.net/next-desktop/mac/Prezi_#{version}.dmg"
  name 'Prezi'
  homepage 'https://prezi.com/'

  app 'Prezi.app'
end
