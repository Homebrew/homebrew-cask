cask 'quip' do
  version '5.2.53'
  sha256 '7c632e9a20639eca5c7c10092726ecfef372235a8c7ccef4ac148808b053d43f'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
