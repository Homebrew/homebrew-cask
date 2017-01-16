cask 'harmony' do
  version '0.4.4'
  sha256 '3c48646ac0c93139b17f34d27e4709cd8fc6eb812046f1fc1c04c31993f9b0d5'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}.dmg"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: 'ceb04a47e9672044a4d413bb3d699c51b1de7a9d6dd27c9660462d917b692236'
  name 'Harmony'
  homepage 'http://getharmony.xyz/'

  app 'Harmony.app'
end
