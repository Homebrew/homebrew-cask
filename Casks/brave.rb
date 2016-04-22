cask 'brave' do
  version '0.9.2dev'
  sha256 '9d94a57dd592abc0521f61f5184569c21ddb752d01ceaa854252ac83f204664b'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '915b5723e5bb799de327c536beeb3610fca50da3c545e713cc5356951118afa1'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'
end
