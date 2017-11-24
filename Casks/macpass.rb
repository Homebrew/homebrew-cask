cask 'macpass' do
  version '0.7.3'
  sha256 '1551b9db0e275827ab99e80a14980dcc1c1e20e47bdb65c0140e618407f150c2'

  # github.com/mstarke/MacPass was verified as official when first introduced to the cask
  url "https://github.com/mstarke/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/mstarke/MacPass/releases.atom',
          checkpoint: '15939b4b9530a717e6cdfda3a959f9a40b8cd2010a0a4246c251fcdb0ca92262'
  name 'MacPass'
  homepage 'https://mstarke.github.io/MacPass/'

  app 'MacPass.app'
end
