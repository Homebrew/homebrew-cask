cask 'patchblocks' do
  version '0.5.3'

  if MacOS.version <= :mountain_lion
    sha256 '7dace0f8163ae389da4059cfbe6ea9925482f27cdd089770fe0d60e4b95a3595'
    url "http://patchblocks.com/sites/default/files/Patchblocks-#{version}-pre10.9.dmg"
  else
    sha256 '9f5da1949e86002cfc82f5b1c76441be840084abe8041c97223ce955b9c71d2b'
    url "http://patchblocks.com/sites/default/files/Patchblocks-#{version}.dmg"
  end

  name 'Patchblocks'
  homepage 'http://patchblocks.com/'

  app 'Patchblocks.app'
end
