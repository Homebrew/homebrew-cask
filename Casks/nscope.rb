cask 'nscope' do
  version '0.7'
  sha256 '34d8c3cc3858a1f007f82687482a3421685b809452b8c84af8e75ea65d680c11'

  url "http://www.nscope.org/v#{version.no_dots}/mac/nScope.dmg"
  name 'nScope'
  homepage 'http://www.nscope.org/'

  app 'nScope.app'
end
