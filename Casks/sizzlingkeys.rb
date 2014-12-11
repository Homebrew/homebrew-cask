cask :v1 => 'sizzlingkeys' do
  version :latest
  sha256 :no_check

  url 'http://www.yellowmug.com/download/SizzlingKeys.dmg'
  homepage 'http://www.yellowmug.com/sk4it/'
  license :unknown    # todo: improve this machine-generated value

  app 'SizzlingKeys.app'
end
