cask :v1 => 'filedrop' do
  version :latest
  sha256 :no_check

  url 'https://commondatastorage.googleapis.com/filedropme/Filedrop.dmg'
  homepage 'http://www.filedropme.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Filedrop.app'
end
