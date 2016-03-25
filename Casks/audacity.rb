cask 'audacity' do
  version '2.1.2-1453294898'
  sha256 '2e4b7d608ecc0d2f79bf16663f085d383075e488f7d50bf7d74c0b69173defe7'

  # oldfoss.com:81/download/Audacity was verified as official when first introduced to the cask
  url "http://app.oldfoss.com:81/download/Audacity/audacity_macosx_ub_#{version.dots_to_underscores}.dmg"
  name 'Audacity'
  homepage 'http://audacityteam.org'
  license :gpl

  app 'Audacity/Audacity.app'

  zap delete: '~/Library/Application Support/audacity'
end
