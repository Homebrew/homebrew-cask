cask 'aware' do
  version '1.0.4'
  sha256 '040e4ef92a12e5db5f5d1b3e81f9cdefc3011dd354d201bd5172fa08c9df8a09'

  # github.com/josh/Aware was verified as official when first introduced to the cask
  url "https://github.com/josh/Aware/archive/v#{version}.zip"
  appcast 'https://github.com/josh/Aware/releases.atom'
  name 'Aware'
  homepage 'https://awaremac.com/'

  app 'Aware.app'
end
