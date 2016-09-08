cask 'insomnia' do
  version '3.3.2'
  sha256 'd80949618e87c29f96d38d896317e022f79311e89c601ae71f78c42bd4651311'

  # s3.amazonaws.com/builds-insomnia-rest was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/builds-insomnia-rest/mac/Insomnia-#{version}.dmg"
  name 'Insomnia'
  homepage 'https://insomnia.rest/'
  license :unknown

  app 'Insomnia.app'
end
