cask 'insomnia' do
  version '4.1.1'
  sha256 '3874f7f5d5648bd3525c91077daf7f1f58aadb8758bbeb5e22e3d2462c7791da'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  app 'Insomnia.app'
end
