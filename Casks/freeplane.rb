cask 'freeplane' do
  version '1.6.12'
  sha256 '97b79f51fae95cc5890b55417c2e6c02019687c847eaf14c7f8b875d2251a757'

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable',
          checkpoint: 'cb369a16417ceb1f2b0250b119d5cfa1a9537ee01f69807fd1733464a6b5eb24'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'

  app 'Freeplane.app'
end
