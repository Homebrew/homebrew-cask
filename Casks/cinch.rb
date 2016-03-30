cask 'cinch' do
  version '1.2.1'
  sha256 'd4e2ce94bb97a3e61e67372dbf9495e4542d9a3eca5625d3119ed8f9c24d61ab'

  url "https://www.irradiatedsoftware.com/downloads/Cinch_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/cinch.php',
          checkpoint: '435102475154532fb560886dd3ac50ee589a38c1a3a1457d03800c3d187a6b3e'
  name 'Cinch'
  homepage 'https://www.irradiatedsoftware.com/cinch/'
  license :commercial

  app 'Cinch.app'
end
