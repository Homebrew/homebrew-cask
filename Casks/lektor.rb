cask 'lektor' do
  version '2.3'
  sha256 '42b78c60a13fe2c58b238878b020677661cb410f753136a0a6b7f9165de49b31'

  # github.com/lektor/lektor was verified as official when first introduced to the cask
  url "https://github.com/lektor/lektor/releases/download/#{version}/Lektor-#{version}.dmg"
  appcast 'https://github.com/lektor/lektor/releases.atom',
          checkpoint: '2e5a9d63dc5064ecb39394084d2a659a4c5f9d075edbbeb18d80fb5b5aa0b4ff'
  name 'Lektor'
  homepage 'https://www.getlektor.com/'

  app 'Lektor.app'
end
