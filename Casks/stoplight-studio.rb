cask 'stoplight-studio' do
  version '1.1.4'
  sha256 '00c0e52eb56a29157ed53b1eafd45446b03709be74b2944e50759b1ee3740eba'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url 'https://github.com/stoplightio/studio/releases/download/v1.1.4/Stoplight-Studio-1.1.4.dmg'
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
