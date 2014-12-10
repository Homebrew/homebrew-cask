cask :v1 => 'seamonkey' do
  version '2.25'
  sha256 '3217e3d1fb94376d01ca38cc926b1b23306579c96e96adfdd50f0f66fc71c5e8'

  url "https://download.mozilla.org/?product=seamonkey-#{version}&os=osx&lang=en-US"
  homepage 'http://www.seamonkey-project.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'SeaMonkey.app'
end
