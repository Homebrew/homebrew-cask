cask 'pencil2d-pencil' do
  version '0.5.4b'
  sha256 'ea667aa1ec3b3793b36230ee2cc6b6cefbd0b8cc4e3c9011bc37ee770b475fca'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/chchwy/pencil2d/downloads/Pencil2D-dev-#{version}-mac.zip"
  name 'Pencil'
  name 'Pencil2D'
  name 'Pencil2D Animation'
  homepage 'http://www.pencil2d.org/'
  license :gpl

  app 'Pencil.app'
end
