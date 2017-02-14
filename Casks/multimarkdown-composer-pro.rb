cask 'multimarkdown-composer-pro' do
  version '3.0b47'
  sha256 '0c2d1e0e1ac380501076e54de138278492a83c9750e079c05faac07ca0e81461'

  # files.fletcherpenney.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.fletcherpenney.net.s3.amazonaws.com/MultiMarkdown%20Composer%20Pro%20%28Beta%29-#{version}.zip"
  name 'MultiMarkdown Composer Pro'
  homepage 'http://support.multimarkdown.com/kb/future-plans/where-can-i-download-the-beta-for-v3'

  app 'MultiMarkdown Composer Pro (Beta).app'
end
