cask :v1 => 'anxiety' do
  version :latest
  sha256 :no_check

  url 'http://www.anxietyapp.com/Anxiety.zip'
  name 'Anxiety'
  appcast 'http://www.anxietyapp.com/appcast/appcast.xml'
  homepage 'http://www.anxietyapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :nested => 'Anxiety.dmg'
  app 'Anxiety.app'
end
