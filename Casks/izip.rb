cask v1: 'izip' do
  version :latest
  sha256 :no_check

  url 'http://www.izip.com/izip.dmg'
  name 'iZip'
  homepage 'http://www.izip.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iZip.app'
end
