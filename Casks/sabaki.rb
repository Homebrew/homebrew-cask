cask 'sabaki' do
  version '0.43.3'
  sha256 '8d3a9eec8b6330ebf9d321dc6ddfe26e56e046bbe7ec581a998403ba508c9284'

  # github.com/SabakiHQ/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/SabakiHQ/Sabaki/releases.atom'
  name 'Sabaki'
  homepage 'https://sabaki.yichuanshen.de/'

  app 'Sabaki.app'
end
