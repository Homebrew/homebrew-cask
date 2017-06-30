cask 'multimarkdown-composer-pro' do
  version '3.0b51'
  sha256 '845027aedcaefb1d50955acc2a355422eded7e15a49f4343a5915828f9a903b7'

  # files.fletcherpenney.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.fletcherpenney.net.s3.amazonaws.com/MultiMarkdown%20Composer%20Pro%20%28Beta%29-#{version}.zip"
  name 'MultiMarkdown Composer Pro'
  homepage 'http://support.multimarkdown.com/kb/future-plans/where-can-i-download-the-beta-for-v3'

  app 'MultiMarkdown Composer Pro (Beta).app'
end
