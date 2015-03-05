cask :v1 => 'ifilex' do
  version :latest
  sha256 :no_check

  url 'http://www.osxbytes.com/iFileX.dmg'
  name 'iFileX'
  homepage 'http://www.osxbytes.com/page3/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iFileX.app'
end
