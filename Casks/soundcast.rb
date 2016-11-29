cask 'soundcast' do
  version '1.7'
  sha256 '39385f89007d65d3085720d8bbe4c4383d5ddedc60b6547e086122965618b7cd'

  url "https://github.com/andresgottlieb/soundcast/releases/download/v#{version}/Soundcast_v#{version}.zip"
  appcast 'https://github.com/andresgottlieb/soundcast/releases.atom',
          checkpoint: 'ab04e3e3fb6927ccf9c59c5b0e09ed59909cdaac6a81a407fed4c605e2597be8'
  name 'Soundcast'
  homepage 'https://github.com/andresgottlieb/soundcast'

  depends_on cask: 'soundflower'

  app 'soundcast.app'
end
