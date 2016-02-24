cask 'quip' do
  version '4.5.9'
  sha256 '16a9e06cbe1b204fefc3f095853da4d600904e0a2b8d109e8e31fd2550cbb079'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'
  license :gratis

  app 'Quip.app'
end
