cask 'geotagger' do
  version '2.00'
  sha256 '1c2dc9bceb21218d13961a0e9d77b91c2df38c596499f4eb805a428c285bedcc'

  url "http://craig.stanton.net.nz/software/files/Geotagger#{version}.zip"
  name 'Geotagger'
  homepage 'http://craig.stanton.net.nz/code/geotagger/'

  app 'Geotagger.app'
end
