cask 'cinch' do
  version '1.2.1'
  sha256 'd4e2ce94bb97a3e61e67372dbf9495e4542d9a3eca5625d3119ed8f9c24d61ab'

  url "https://www.irradiatedsoftware.com/downloads/Cinch_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/cinch.php',
          :sha256 => '0f43b9c9317d2006af373c3b1829af91679a34f722a9085f379d77c4840d180c'
  name 'Cinch'
  homepage 'https://www.irradiatedsoftware.com/cinch/'
  license :commercial

  app 'Cinch.app'
end
