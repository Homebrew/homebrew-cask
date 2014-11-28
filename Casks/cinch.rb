cask :v1 => 'cinch' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/download/Cinch.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/cinch.php'
  homepage 'http://www.irradiatedsoftware.com/cinch/'
  license :unknown

  app 'Cinch.app'
end
