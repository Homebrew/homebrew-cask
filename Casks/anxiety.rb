cask :v1 => 'anxiety' do
  version :latest
  sha256 :no_check

  url 'http://www.anxietyapp.com/Anxiety.zip'
  appcast 'http://www.anxietyapp.com/appcast/appcast.xml'
  homepage 'http://www.anxietyapp.com/'
  license :unknown

  container :nested => 'Anxiety.dmg'
  app 'Anxiety.app'
end
