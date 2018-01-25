cask 'sabaki' do
  version '0.33.2'
  sha256 'f14b623b0e2b98b3a6ffd5dbc561381c271855b3c24b933df7e46c00b84ff629'

  # github.com/yishn/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/yishn/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/yishn/Sabaki/releases.atom',
          checkpoint: 'f35b751fa7be75fe2d61118d232d07759293505640720948729719ad92b156f0'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end
