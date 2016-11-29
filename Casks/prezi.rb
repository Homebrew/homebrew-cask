cask 'prezi' do
  version '6.8.22'
  sha256 '261ce0821874b91226b88cc295fe4688a1a153a5961a2a19714195f151db8743'

  # prezi-a.akamaihd.net was verified as official when first introduced to the cask
  url "https://prezi-a.akamaihd.net/next-desktop/mac/Prezi_#{version}.dmg"
  name 'Prezi'
  homepage 'https://prezi.com/'

  app 'Prezi.app'
end
