cask 'mcedit' do
  version '1.5.5.0'
  sha256 '318fc9345e7630321f0ba993c68877713d423994f841c0086e23bfa6b062edae'

  # github.com/Khroki/MCEdit-Unified was verified as official when first introduced to the cask
  url "https://github.com/Khroki/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  appcast 'https://github.com/Khroki/MCEdit-Unified/releases.atom',
          checkpoint: '2b8f79fcdc2bfd57af1409324dc194d13e27b59659a695f947e9cc02d254a908'
  name 'MCEdit-Unified'
  homepage 'http://www.mcedit-unified.net/'

  app 'mcedit.app'
end
