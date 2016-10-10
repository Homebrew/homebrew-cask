cask 'origin' do
  version :latest
  sha256 :no_check

  # origin-a.akamaihd.net was verified as official when first introduced to the cask
  url 'https://origin-a.akamaihd.net/Origin-Client-Download/origin/mac/live/Origin.dmg'
  name 'Origin'
  homepage 'https://origin.com'

  app 'Origin.app'
end
