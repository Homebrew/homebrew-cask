cask 'cinder' do
  version '0.9.1'
  sha256 '41e85a595b17181ef46309d44fb5790de93ddf4a7abb5c7261b5a3ba87563337'

  url "https://libcinder.org/static/releases/cinder_#{version}_mac.zip"
  appcast 'https://github.com/cinder/cinder/releases.atom',
          checkpoint: '7976c5140bdbaaab1907056c7646a0f4a0a8dfd9691d2aeb4a3c50781a30c12d'
  name 'Cinder'
  homepage 'https://libcinder.org/'

  suite "cinder_#{version}_mac"
end
