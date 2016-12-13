cask 'enpass' do
  version '5.3.0'
  sha256 '65a34eba1f231de0467a8953c761f37118d6a9c45b2f01af2e95cc34ad695bb5'

  # sinew.in was verified as official when first introduced to the cask
  url "https://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  appcast 'https://www.enpass.io/release-notes/macosx/',
          checkpoint: 'e2fa3558bc9317f30f14428529f924a340d0501c69f5c6fdefaf7c9613780037'
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'
end
