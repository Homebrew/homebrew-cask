cask 'mcedit' do
  version '1.5.2.1'
  sha256 '604d0f55a9a796f9758e4972c2f2819325b018f3b2ecf6cbe4d667e27ac0896c'

  # github.com/Khroki/MCEdit-Unified was verified as official when first introduced to the cask
  url "https://github.com/Khroki/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  appcast 'https://github.com/Khroki/MCEdit-Unified/releases.atom',
          checkpoint: '496f5992c1dd033e1e4944a5c017ab81310446def236d8cded17725cededfd7e'
  name 'MCEdit-Unified'
  homepage 'https://khroki.github.io/MCEdit-Unified/'
  license :mit

  app 'mcedit.app'
end
