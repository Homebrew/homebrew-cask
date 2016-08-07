cask 'prezi' do
  version '6.8.8'
  sha256 '0df7a3c9be61e5a65c00c0fa34b5fbc028f5d337ace8b2daae8bcffaaa4f30d2'

  # prezi-a.akamaihd.net was verified as official when first introduced to the cask
  url "https://prezi-a.akamaihd.net/next-desktop/mac/Prezi_#{version}.dmg"
  name 'Prezi'
  homepage 'https://prezi.com/'
  license :gratis

  app 'Prezi.app'
end
