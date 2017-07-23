cask 'rebol-core' do
  version '2.7.8'
  sha256 'edfa75f1be9d0d4f92a217185a3810e05b0dee41f8d24096f7568515b7b4aa06'

  url "http://www.rebol.com/downloads/v#{version.no_dots}/rebol-core-#{version.no_dots}-2-5.tar.gz"
  name 'Rebol, Relative Expression Based Object Language'
  homepage 'http://www.rebol.com/'

  conflicts_with cask: 'rebol-view'

  binary 'releases/rebol-core/rebol', target: 'rebol'
end
