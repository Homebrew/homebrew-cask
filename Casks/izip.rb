cask 'izip' do
  version :latest
  sha256 :no_check

  url 'http://www.izip.com/izip.dmg'
  name 'iZip'
  homepage 'http://www.izip.com'
  license :gratis

  app 'iZip.app'
end
