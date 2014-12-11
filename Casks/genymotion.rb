cask :v1 => 'genymotion' do
  version '2.3.1'
  sha256 'aa41be79a773ccf3a6b68971088c38ef34ff864128c57b09a8362b878f4534e0'

  url "http://files2.genymotion.com/genymotion/genymotion-#{version}/genymotion-#{version}.dmg"
  homepage 'http://www.genymotion.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
end
