cask 'audacity' do
  version '2.2.2'
  sha256 '39a2783c78cca13e893321e0d87098739258cabbfc257119ee6cb21d0dc9037c'

  # app.oldfoss.com:81/download/Audacity/audacity-macos- was verified as official when first introduced to the cask.
  url "http://app.oldfoss.com:81/download/Audacity/audacity-macos-#{version}.dmg"
  name 'Audacity'
  homepage 'https://www.audacityteam.org/'

  depends_on macos: '>= :snow_leopard'

  app 'Audacity.app'
end
