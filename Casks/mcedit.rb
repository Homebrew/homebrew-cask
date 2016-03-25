cask 'mcedit' do
  version '1.5.1.0'
  sha256 'cbe893c076415ae269b723aed1d0294e2648a93444309e23d3767fa8c05990c8'

  # github.com/Khroki/MCEdit-Unified was verified as official when first introduced to the cask
  url "https://github.com/Khroki/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  appcast 'https://github.com/Khroki/MCEdit-Unified/releases.atom',
          checkpoint: '08be06910483a496c714fc1e41805694c1839311d9685cc185ffb7a60e50eff5'
  name 'MCEdit-Unified'
  homepage 'https://khroki.github.io/MCEdit-Unified/'
  license :mit

  app 'mcedit.app'
end
