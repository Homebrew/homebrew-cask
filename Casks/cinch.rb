cask 'cinch' do
  version '1.2.1'
  sha256 'd4e2ce94bb97a3e61e67372dbf9495e4542d9a3eca5625d3119ed8f9c24d61ab'

  url "https://www.irradiatedsoftware.com/downloads/Cinch_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/cinch.php',
          :sha256 => '7aa0c5cbb3a1359c0b5de01f541260002cbc8560935a0241b94cdc14f8987246'
  name 'Cinch'
  homepage 'https://www.irradiatedsoftware.com/cinch/'
  license :commercial

  app 'Cinch.app'
end
