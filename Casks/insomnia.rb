cask 'insomnia' do
  version '3.2.6'
  sha256 '560a73ad1dc6f36d823401beec3816951b1bdf2e3f7b391cdc7f35aa40f2d8ec'

  # s3.amazonaws.com/builds-insomnia-rest was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/builds-insomnia-rest/mac/Insomnia-#{version}.dmg"
  name 'Insomnia'
  homepage 'https://insomnia.rest/'
  license :unknown

  app 'Insomnia.app'
end
