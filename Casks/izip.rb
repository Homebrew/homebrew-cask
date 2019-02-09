cask 'izip' do
  version '3.4'
  sha256 '6a17105e3d747135e91f69cdb7cfe0aa837e13683c30366022825b9e976151ef'

  url "https://www.izip.com/izip_update_#{version.no_dots}.zip"
  appcast 'https://www.izip.com/updates'
  name 'iZip'
  homepage 'https://www.izip.com/'

  app 'iZip.app'
end
