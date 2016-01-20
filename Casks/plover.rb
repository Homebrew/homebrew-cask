cask 'plover' do
  version '2.5.8'
  sha256 'a8bbeddb5d6fb8d4499844257035edd62e431a4f1eb7959bdf17a15c1cbe12de'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/openstenoproject/plover/releases/download/v#{version}/Plover.dmg"
  appcast 'https://github.com/openstenoproject/plover/releases.atom',
          checkpoint: '0582513980293190a9d89ee25fb5a38ac4a50580df8f2a801d3483eb5ac2ef34'
  name 'Plover'
  homepage 'http://stenoknight.com/wiki/Main_Page'
  license :gpl

  accessibility_access true

  app 'plover.app'
end
