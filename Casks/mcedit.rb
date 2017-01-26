cask 'mcedit' do
  version '1.5.6.0'
  sha256 'e2026de3589e3e65086a385ee4e02d607337bc9da11357d1b3ac106e2ee843d7'

  # github.com/Khroki/MCEdit-Unified was verified as official when first introduced to the cask
  url "https://github.com/Khroki/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  appcast 'https://github.com/Khroki/MCEdit-Unified/releases.atom',
          checkpoint: '4f2e24a6f33b62e24d538b879d16fce414771524787c44eac4ea6a7d88502366'
  name 'MCEdit-Unified'
  homepage 'http://www.mcedit-unified.net/'

  app 'mcedit.app'
end
