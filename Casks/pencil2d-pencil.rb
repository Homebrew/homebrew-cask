cask 'pencil2d-pencil' do
  version '0.5.4b'
  sha256 'ea667aa1ec3b3793b36230ee2cc6b6cefbd0b8cc4e3c9011bc37ee770b475fca'

  # bitbucket.org/chchwy/pencil2d was verified as official when first introduced to the cask
  url "https://bitbucket.org/chchwy/pencil2d/downloads/Pencil2D-dev-#{version}-mac.zip"
  name 'Pencil2D Animation'
  homepage 'https://www.pencil2d.org/'

  app 'Pencil.app'
end
