cask 'seamonkey' do
  version '2.40'
  sha256 '51eb9ebc5578e81692d8c03cd2e7723f2279a4462c2afd2779b38c29bf12bd75'

  # mozilla.org is the official download host per the vendor homepage
  url "https://download.mozilla.org/?product=seamonkey-#{version}&os=osx&lang=en-US"
  name 'SeaMonkey'
  homepage 'http://www.seamonkey-project.org/'
  license :oss

  app 'SeaMonkey.app'
end
