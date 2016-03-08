cask 'basex' do
  version '8.1.1'
  sha256 '89e02ebbbb9df544157dd6d896d6c65de47731b45ca67a490e269499614def15'

  url "http://files.basex.org/releases/#{version}/BaseX#{version.delete('.')}.app.tar.bz2"
  name 'BaseX'
  homepage 'http://basex.org/'
  license :bsd

  app 'BaseX.app'
end
