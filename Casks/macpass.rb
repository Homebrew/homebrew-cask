cask 'macpass' do
  version '0.6.2-alpha'
  sha256 '66e6cd674985555e1c8ea8a9a9a4dd10a3919b83b07f68c4dab6fa46242e4044'

  # github.com/mstarke/MacPass was verified as official when first introduced to the cask
  url "https://github.com/mstarke/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/mstarke/MacPass/releases.atom',
          checkpoint: 'a08c3cf913a88d0bd10d2013a099ef7f20def0a2ab1e48aa1577e7dcb3a02111'
  name 'MacPass'
  homepage 'https://mstarke.github.io/MacPass/'

  app 'MacPass.app'
end
