cask 'amanote' do
  version '0.9.7'
  sha256 'c4a6844de39f5b3efc6dc11b34bab5f34e9e6d8eb3ee1fcc87ad6b0a82ade0b4'

  # amazonaws.com/release.amanote.com was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/release.amanote.com/beta/v#{version}/Amanote-#{version}.dmg"
  name 'Amanote'
  homepage 'https://amanote.com/'

  app 'Amanote.app'
end
