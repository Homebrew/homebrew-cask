cask :v1 => 'seamonkey' do
  version '2.25'
  sha256 '3217e3d1fb94376d01ca38cc926b1b23306579c96e96adfdd50f0f66fc71c5e8'

  # mozilla.org is the official download host per the vendor homepage
  url "https://download.mozilla.org/?product=seamonkey-#{version}&os=osx&lang=en-US"
  name 'SeaMonkey'
  homepage 'http://www.seamonkey-project.org/'
  license :oss

  app 'SeaMonkey.app'
end
