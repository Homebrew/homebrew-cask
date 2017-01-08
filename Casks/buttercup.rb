cask 'buttercup' do
  version '0.6.1'
  sha256 '92526f774e96c41c22abbb5f9620e683b551e80544a0d9a962b785b48454c16d'

  # github.com/buttercup-pw/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup-pw/buttercup/releases/download/#{version}-alpha/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup-pw/buttercup/releases.atom',
          checkpoint: '5a8ade11ebdeaa58f34f18923dbfd0cf10d19908090218139be26e8f231eab69'
  name 'Buttercup'
  homepage 'https://buttercup.pw'

  app 'Buttercup.app'
end
