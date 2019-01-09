cask 'nscope' do
  version '0.8.1'
  sha256 'fdc6bf8ad67e20eb20f5fb4757a80014675388421e5d8e7afa200fe5aa7cc415'

  url "http://www.nscope.org/v#{version.no_dots}/mac/nScope.dmg"
  name 'nScope'
  homepage 'http://www.nscope.org/'

  app 'nScope.app'
end
