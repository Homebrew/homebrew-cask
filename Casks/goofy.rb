cask 'goofy' do
  version '3.2.0'
  sha256 'd208a9e901be0fbeb96e344e5b3c8ad17aef21f9948e84f40c836dce7301289e'

  # github.com/danielbuechele/goofy was verified as official when first introduced to the cask
  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/goofy-core-#{version}-mac.zip"
  appcast 'https://github.com/danielbuechele/goofy/releases.atom',
          checkpoint: '0419f2ee9aa22a06774f76ffcd2ba99f4950f3de2c774fd0c40e56467e34a25b'
  name 'Goofy'
  homepage 'http://www.goofyapp.com/'

  app 'Goofy.app'
end
