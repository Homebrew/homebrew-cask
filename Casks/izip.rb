cask 'izip' do
  version :latest
  sha256 :no_check

  url 'https://www.izip.com/izip.dmg'
  appcast 'https://www.izip.com/updates'
  name 'iZip'
  homepage 'https://www.izip.com/'

  app 'iZip.app'
end
