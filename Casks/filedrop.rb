cask :v1 => 'filedrop' do
  version :latest
  sha256 :no_check

  url 'https://commondatastorage.googleapis.com/filedropme/Filedrop.dmg'
  name 'Filedrop'
  homepage 'http://www.filedropme.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Filedrop.app'
end
