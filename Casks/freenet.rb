cask 'freenet' do
  version '2.1.0'
  sha256 '13c20619813d349a517906096068c6f0986ef6c36295bc7f4da3535022ce4e94'

  # github.com was verified as official when first introduced to the cask
  url 'https://github.com/freenet/mactray/releases/download/v2.1.0/FreenetTray_2.1.0.zip'
  name 'Freenet'
  homepage 'https://freenetproject.org/'

  app 'FreenetTray.app'
end
