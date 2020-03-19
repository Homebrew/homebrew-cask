cask 'sabaki' do
  version '0.50.1'
  sha256 'c0d29e889de6d885d7ed7d6f6ace6c5ae7346889c5255a30b6b72af52f800a95'

  # github.com/SabakiHQ/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/SabakiHQ/Sabaki/releases.atom'
  name 'Sabaki'
  homepage 'https://sabaki.yichuanshen.de/'

  app 'Sabaki.app'
end
