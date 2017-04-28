cask 'appserver' do
  version '1.1.3-200'
  sha256 'dc7a94a1812356250b2cca7eb337c7fc7ad38c71745fc243492ec3113fac6c31'

  # github.com/appserver-io/appserver was verified as official when first introduced to the cask
  url "https://github.com/appserver-io/appserver/releases/download/#{version.sub(%r{-.*}, '')}/appserver-dist_#{version}_x86_64.pkg"
  appcast 'https://github.com/appserver-io/appserver/releases.atom',
          checkpoint: '81728ec2fdd771f1530058b9d03fda310259b30c14944fed9229609e977703e1'
  name 'appserver.io'
  homepage 'http://appserver.io/'

  pkg "appserver-dist_#{version}_x86_64.pkg"

  uninstall pkgutil: [
                       'com.techdivision.appserver-io.runtime',
                       'com.techdivision.appserver-io.source',
                     ]
end
