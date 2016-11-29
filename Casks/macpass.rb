cask 'macpass' do
  version '0.6.2-alpha'
  sha256 '66e6cd674985555e1c8ea8a9a9a4dd10a3919b83b07f68c4dab6fa46242e4044'

  # github.com/mstarke/MacPass was verified as official when first introduced to the cask
  url "https://github.com/mstarke/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/mstarke/MacPass/releases.atom',
          checkpoint: 'e0cb1a3c927f46c82094b92ff519cf38dfb89d00e79f665428517773ba130bff'
  name 'MacPass'
  homepage 'https://mstarke.github.io/MacPass/'

  app 'MacPass.app'
end
