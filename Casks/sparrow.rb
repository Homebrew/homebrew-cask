cask :v1 => 'sparrow' do
  version :latest
  sha256 :no_check

  url 'http://download.sparrowmailapp.com/appcast/Sparrow-latest.dmg'
  appcast 'http://download.sparrowmailapp.com/appcast/appcast.xml'
  homepage 'http://www.sparrowmailapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sparrow.app'
end
