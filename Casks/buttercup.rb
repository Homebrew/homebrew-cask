cask 'buttercup' do
  version '0.7.0'
  sha256 'a038a68087a25e9ec5b808003257286c132c8f410a8fe92273bb40b4943b068b'

  # github.com/buttercup-pw/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup-pw/buttercup/releases/download/v#{version}-alpha/Buttercup-#{version}.dmg"
  appcast 'https://github.com/buttercup-pw/buttercup/releases.atom',
          checkpoint: '4e51fd2390d0ef724fda3fdcdb836ce009ad02a89d608467dbfb3df12e084c22'
  name 'Buttercup'
  homepage 'https://buttercup.pw'

  app 'Buttercup.app'
end
