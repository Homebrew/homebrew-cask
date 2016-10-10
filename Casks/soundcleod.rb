cask 'soundcleod' do
  version '1.1.0'
  sha256 '8647937bfdf807808612760f87df4cc66e64b3a2d861262b733889c4b504f737'

  # github.com/salomvary/soundcleod was verified as official when first introduced to the cask
  url "https://github.com/salomvary/soundcleod/releases/download/v#{version}/SoundCleod.dmg"
  appcast 'https://github.com/salomvary/soundcleod/releases.atom',
          checkpoint: '9fe007c0098bc5b7a0e9368209352e08089c848b7faaa02aab7b37654a00e389'
  name 'SoundCleod'
  homepage 'https://salomvary.github.io/soundcleod/'

  app 'SoundCleod.app'
end
