cask 'mcedit' do
  version '1.5.6.0'
  sha256 'e2026de3589e3e65086a385ee4e02d607337bc9da11357d1b3ac106e2ee843d7'

  # github.com/Khroki/MCEdit-Unified was verified as official when first introduced to the cask
  url "https://github.com/Khroki/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  appcast 'https://github.com/Khroki/MCEdit-Unified/releases.atom',
          checkpoint: '6d45b83ded8e642ca2c53c5210f7dc45c52e4865cfe8d2c790c06838fa79aed0'
  name 'MCEdit-Unified'
  homepage 'http://www.mcedit-unified.net/'

  app 'mcedit.app'
end
