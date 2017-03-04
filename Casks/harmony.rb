cask 'harmony' do
  version '0.4.6'
  sha256 '19d5f0fcc2660947a68de98dba277ad14f475377e2c4536bb015e7d908a3e719'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}.dmg"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: '8cf4fd4fe82838ef8cc2b77272bfda6ec55e5d7c4d47b96cba83ba7abaa68d38'
  name 'Harmony'
  homepage 'http://getharmony.xyz/'

  app 'Harmony.app'
end
