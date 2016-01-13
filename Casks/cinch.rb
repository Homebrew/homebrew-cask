cask 'cinch' do
  version '1.2.1'
  sha256 'd4e2ce94bb97a3e61e67372dbf9495e4542d9a3eca5625d3119ed8f9c24d61ab'

  url "https://www.irradiatedsoftware.com/downloads/Cinch_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/cinch.php',
          :sha256 => '2ac68e0bee1b5b8ddf471693e0d7253efc0ace0378f8fc0860cd35a4016e9812'
  name 'Cinch'
  homepage 'https://www.irradiatedsoftware.com/cinch/'
  license :commercial

  app 'Cinch.app'
end
