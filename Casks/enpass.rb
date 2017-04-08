cask 'enpass' do
  version '5.5.2'
  sha256 '3f3eec50c4d80b26dc5b79a2743331b3a470664e6d5f309d1a0d86e6e057bea2'

  # sinew.in was verified as official when first introduced to the cask
  url "https://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'
end
