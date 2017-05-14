cask 'qtox' do
  version '1.10.1'
  sha256 '611b4ce4792e5b99dac4095cc8ec9dde7641f3985acaf74151721c2e6523616b'

  # github.com/tux3/qTox was verified as official when first introduced to the cask
  url "https://github.com/tux3/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/tux3/qtox/releases.atom',
          checkpoint: '3d680b77edfd26458214ee7774bbb733bad55f6ef9ab5c10e1e2289b2e897d58'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
