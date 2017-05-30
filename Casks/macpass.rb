cask 'macpass' do
  version '0.6.2-alpha'
  sha256 '66e6cd674985555e1c8ea8a9a9a4dd10a3919b83b07f68c4dab6fa46242e4044'

  # github.com/mstarke/MacPass was verified as official when first introduced to the cask
  url "https://github.com/mstarke/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/mstarke/MacPass/releases.atom',
          checkpoint: '058a97340210902c05fc1eff2384af9b68a7493c3bd5cc3542a0255ee3177775'
  name 'MacPass'
  homepage 'https://mstarke.github.io/MacPass/'

  app 'MacPass.app'
end
