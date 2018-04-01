cask 'sparkle' do
  version '1.18.1'
  sha256 '7a7a486d2c5adb75bdd78775946da2b37b82b93cb3eea96049f7b1d8569f11cc'

  # github.com/sparkle-project/Sparkle was verified as official when first introduced to the cask
  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'https://github.com/sparkle-project/Sparkle/releases.atom',
          checkpoint: '64a09869d80b7e7355696e243a05692ea77414a97e12f71ff4e6535acd224a47'
  name 'Sparkle'
  homepage 'https://sparkle-project.org/'

  app 'Sparkle Test App.app'
end
