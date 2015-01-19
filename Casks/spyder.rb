cask :v1 => 'spyder' do
  version '2.3.2'
  sha256 '0565a5af85e26759acce04f6da1b6317e8c2ec932847bc590408a1473d0686a7'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}-py3.4.dmg"
  name 'Spyder'
  homepage 'https://code.google.com/p/spyderlib/'
  license :oss

  app 'Spyder.app'
end
