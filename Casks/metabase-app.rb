cask 'metabase-app' do
  version '0.22.1.0'
  sha256 '8efde3cd43471d35258b979817b2facc9c170757c577d796ff8cca9557d1fcbe'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: 'c68198d7a91b7ecd43f5dc8fa34283ca0e59a01d4e02abe3bd77a401fc2d4a83'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
