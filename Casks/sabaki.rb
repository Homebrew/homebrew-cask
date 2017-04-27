cask 'sabaki' do
  version '0.30.1'
  sha256 '5872a9a44e41fab6d947d7996060dfa7df323cfcc88ed24a959771a75b7d00c3'

  # github.com/yishn/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/yishn/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/yishn/Sabaki/releases.atom',
          checkpoint: 'cc6ebe3c2cc913c16e6142e131494af63da6c09c95b574e809046de096f9668e'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end
