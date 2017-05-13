cask 'macpass' do
  version '0.6.2-alpha'
  sha256 '66e6cd674985555e1c8ea8a9a9a4dd10a3919b83b07f68c4dab6fa46242e4044'

  # github.com/mstarke/MacPass was verified as official when first introduced to the cask
  url "https://github.com/mstarke/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/mstarke/MacPass/releases.atom',
          checkpoint: 'a104302161f8b56ca01d8bcb141fd7fbb639fe6cf973a0a32cb3a26a876d5752'
  name 'MacPass'
  homepage 'https://mstarke.github.io/MacPass/'

  app 'MacPass.app'
end
