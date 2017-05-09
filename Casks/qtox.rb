cask 'qtox' do
  version '1.10.0'
  sha256 'f9adc318ea4b89c089ad11ef6a74dec7fa83499a232c1ebe9fdebdcf4fc58265'

  # github.com/tux3/qTox was verified as official when first introduced to the cask
  url "https://github.com/tux3/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/tux3/qtox/releases.atom',
          checkpoint: 'd74c248f0c50c446be1676b1fc490a027c0e997d42d0320b4e652a00ee0b967b'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
