cask 'freeplane' do
  version '1.6.10'
  sha256 '9635d901e23a8c547956e2027337a44605738d66fd9842f4ec0e0f46683664e6'

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable',
          checkpoint: '49b21ea5e5a65bf06f8676b3b994451316ccae1f505c0d97c621e8e37d039952'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'

  app 'Freeplane.app'
end
