cask 'sabaki' do
  version '0.50.0'
  sha256 '567a3c93720915508766fd03f939487765d8a5da941dabf41bb9abdcc0f861f1'

  # github.com/SabakiHQ/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/SabakiHQ/Sabaki/releases.atom'
  name 'Sabaki'
  homepage 'https://sabaki.yichuanshen.de/'

  app 'Sabaki.app'
end
