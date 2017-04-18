cask 'buttercup' do
  version '0.12.2'
  sha256 'a4182de9f197328cdca3988b4d58d2051cdc118e53855de525b59e38fa4a2feb'

  # github.com/buttercup-pw/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup-pw/buttercup/releases/download/v#{version}-alpha/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup-pw/buttercup/releases.atom',
          checkpoint: 'f2ecf71a7abfd434bd34d70d72c6ecb843eda8dc404a34fe0b706ad741e93d61'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
