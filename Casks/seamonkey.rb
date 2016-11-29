cask 'seamonkey' do
  version '2.40'
  sha256 '51eb9ebc5578e81692d8c03cd2e7723f2279a4462c2afd2779b38c29bf12bd75'

  # mozilla.org was verified as official when first introduced to the cask
  url "https://download.mozilla.org/?product=seamonkey-#{version}&os=osx&lang=en-US"
  name 'SeaMonkey'
  homepage 'http://www.seamonkey-project.org/'

  app 'SeaMonkey.app'
end
