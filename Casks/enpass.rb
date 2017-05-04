cask 'enpass' do
  version '5.5.3'
  sha256 '9ed5f8b573ea64306723f14f0792ce0c78bd3c38007ea0cef618e8fc22748f97'

  # sinew.in was verified as official when first introduced to the cask
  url "https://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'
end
