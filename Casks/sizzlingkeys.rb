cask 'sizzlingkeys' do
  version :latest
  sha256 :no_check

  url 'http://www.yellowmug.com/download/SizzlingKeys.dmg'
  name 'SizzlingKeys'
  homepage 'http://www.yellowmug.com/sk4it/'
  license :commercial

  app 'SizzlingKeys.app'
end
