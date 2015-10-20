cask :v1 => 'cinch' do
  version '1.2'
  sha256 '61c63fedf9dd876f9f0885042463baba6914062ae0bef0883a72855a41c7b3a7'

  url "https://www.irradiatedsoftware.com/downloads/Cinch_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/cinch.php'
  name 'Cinch'
  homepage 'https://www.irradiatedsoftware.com/cinch/'
  license :commercial

  app 'Cinch.app'
end
