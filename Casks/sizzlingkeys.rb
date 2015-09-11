cask :v1 => 'sizzlingkeys' do
  version :latest
  sha256 :no_check

  url 'http://www.yellowmug.com/download/SizzlingKeys.dmg'
  name 'SizzlingKeys'
  homepage 'http://www.yellowmug.com/sk4it/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SizzlingKeys.app'
end
