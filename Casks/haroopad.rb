cask 'haroopad' do
  version '0.13.1'
  sha256 '97ea132dfb1efa5492d98ee3b7de4beda79796ac75ce293c57e8300e11b1f694'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/rhiokim/haroopad-download/downloads/Haroopad-v#{version}-x64.dmg"
  name 'Haroopad'
  homepage 'http://pad.haroopress.com/'
  license :gratis

  app 'Haroopad.app'
end
