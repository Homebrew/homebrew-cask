cask :v1 => 'ifilex' do
  version :latest
  sha256 :no_check

  url 'http://www.osxbytes.com/iFileX.dmg'
  homepage 'http://www.osxbytes.com/page3/index.html'
  license :unknown    # todo: improve this machine-generated value

  app 'iFileX.app'
end
