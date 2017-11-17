cask 'macpass' do
  version '0.7.1'
  sha256 '7fd585aff756be13c211a2d8f587da827312f44c3f0c9fb91d14295170afbdfc'

  # github.com/mstarke/MacPass was verified as official when first introduced to the cask
  url "https://github.com/mstarke/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/mstarke/MacPass/releases.atom',
          checkpoint: 'dbef902cb05c6628310fe575219bea3faab596420c02e4269d2c810572446e52'
  name 'MacPass'
  homepage 'https://mstarke.github.io/MacPass/'

  app 'MacPass.app'
end
