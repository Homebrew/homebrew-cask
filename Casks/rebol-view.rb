cask 'rebol-view' do
  version '2.7.8'
  sha256 '9aff51eb1d388ec93ce6385eb77a285064a101b5f2f716851170d2e6b9f6e031'

  url "http://www.rebol.com/downloads/v#{version.no_dots}/rebol-view-#{version.no_dots}-2-5.tar.gz"
  name 'Rebol distribution with additional graphics support'
  homepage 'http://www.rebol.com/'

  conflicts_with cask: 'rebol-core'

  binary 'releases/rebol-view/rebol', target: 'rebol'
end
