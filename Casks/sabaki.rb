cask 'sabaki' do
  version '0.51.0'
  sha256 '8d2085b7dd90add0f20e3e77d81f85337bff803d22fe828b90b340c3e9b55099'

  # github.com/SabakiHQ/Sabaki/ was verified as official when first introduced to the cask
  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/SabakiHQ/Sabaki/releases.atom'
  name 'Sabaki'
  homepage 'https://sabaki.yichuanshen.de/'

  app 'Sabaki.app'
end
