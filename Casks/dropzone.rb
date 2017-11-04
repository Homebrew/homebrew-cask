cask 'dropzone' do
  version '3.6.4'
  sha256 '41fcdb7eb2f8bbcaa1a860e8aa63a9fdf66932168bcb693485fdbdb26d422a93'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/sparkle/updates.xml',
          checkpoint: 'c31c4a066ab90115e80741f800a518c0d3546f581b9fa9d7d0fb08fc5ff07be8'
  name 'Dropzone'
  homepage 'https://aptonic.com/'

  app "Dropzone #{version.major}.app"
end
