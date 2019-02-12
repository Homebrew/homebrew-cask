cask 'izip' do
  version '3.5'
  sha256 '2501c6b9d237864aa5942afd5a67c5f89fbc13dee48b2ccb8cfb164715943327'

  url "https://www.izip.com/izip_update_#{version.no_dots}.zip"
  appcast 'https://www.izip.com/updates'
  name 'iZip'
  homepage 'https://www.izip.com/'

  app 'iZip.app'
end
