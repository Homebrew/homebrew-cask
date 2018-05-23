cask 'metabase-app' do
  version '0.29.3.0'
  sha256 'e85acdc700b737d35b339e2a23617b378e3ea62de4f04591b6a7ad94b3221836'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml',
          checkpoint: '90454776c643248aa37dac6db5b790ff453c469b51ac3b8d3aaa69d8a38bdd21'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
