cask :v1 => 'cinch' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/download/Cinch.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/cinch.php'
  name 'Cinch'
  homepage 'https://www.irradiatedsoftware.com/cinch/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Cinch.app'
end
