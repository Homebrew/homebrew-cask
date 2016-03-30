cask 'jedict' do
  version '4.9.6'
  sha256 '99dc7bd641a708c4d09e975e136c0dd05597620f2f47a77817b4604fc1731b9b'

  url "http://jedict.com/Downloads/JEDict#{version.delete('.')}.zip"
  name 'Jedict'
  homepage 'http://www.jedict.com/'
  license :commercial

  app 'JEDict.app'
end
