cask :v1 => 'izip' do
  version :latest
  sha256 :no_check

  url 'http://www.izip.com/izip.dmg'
  homepage 'http://www.izip.com'
  license :unknown    # todo: improve this machine-generated value

  app 'iZip.app'
end
