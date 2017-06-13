cask 'cinder' do
  version '0.9.1'
  sha256 '41e85a595b17181ef46309d44fb5790de93ddf4a7abb5c7261b5a3ba87563337'

  url "https://libcinder.org/static/releases/cinder_#{version}_mac.zip"
  appcast 'https://github.com/cinder/cinder/releases.atom',
          checkpoint: 'e0db8a004ea98e9cd20247a819305bc1e74486f059e1374fe522dbf09c44c2a0'
  name 'Cinder'
  homepage 'https://libcinder.org/'

  suite "cinder_#{version}_mac"
end
