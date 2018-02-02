cask 'quip' do
  version '5.2.20'
  sha256 'db3cd8661d17cf914afd4b0ea414fe0e7e9164dfe4316e589aa5ea7afe30691a'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
