cask :v1 => 'easycrop' do
  version :latest
  sha256 :no_check

  url 'http://www.yellowmug.com/download/EasyCrop.dmg'
  name 'EasyCrop'
  homepage 'http://www.yellowmug.com/easycrop/'
  license :unknown

  app 'EasyCrop.app'
end
