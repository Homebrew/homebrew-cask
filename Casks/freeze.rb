cask 'freeze' do
  version '2.8.1-237'
  sha256 '0deed04568a00066e146da3d35316a422fd764e1c8eaa459feb945ecd5ec27f1'

  url "https://www.freezeapp.net/download/Freeze-#{version}.zip"
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: '02a642497df16099b0035e80e13ea4af5b231df9582cf75b2290419803f94b46'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'

  app 'Freeze.app'
end
