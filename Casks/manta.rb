cask 'manta' do
  version '1.0.0'
  sha256 '8677bff56254e96333f66f175e93a12da5cab98b9f366e68d5eb50a399c9e483'

  # github.com/hql287/Manta was verified as official when first introduced to the cask
  url "https://github.com/hql287/Manta/releases/download/v#{version}/Manta-#{version}-mac.zip"
  appcast 'https://github.com/hql287/Manta/releases.atom',
          checkpoint: 'b52668faff360f6743266b614e7aad5d8632ba8a1d2166c659960502a8f6f3c2'
  name 'Manta'
  homepage 'https://manta.life/'

  app 'Manta.app'
end
