cask 'qtox' do
  version '1.15.0'
  sha256 '566397a5dd01ee4a0f21cac91e2ff8ea98739db87dca560ec16145b3e62b19b7'

  # github.com/qTox/qTox was verified as official when first introduced to the cask
  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/qTox/qTox/releases.atom',
          checkpoint: '9d0f8fe34feba26506f5da3917dbb2f8ef750bd4137626f87858c61cac33776e'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
