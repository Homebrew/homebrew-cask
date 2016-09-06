cask 'insomnia' do
  version '3.3.1'
  sha256 '8136fdff55c0f3894f47e0a22de7290c0b8c9b1173f78f61f91e271a52ae448b'

  # s3.amazonaws.com/builds-insomnia-rest was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/builds-insomnia-rest/mac/Insomnia-#{version}.dmg"
  name 'Insomnia'
  homepage 'https://insomnia.rest/'
  license :unknown

  app 'Insomnia.app'
end
