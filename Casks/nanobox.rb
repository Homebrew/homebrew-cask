# https://s3.amazonaws.com/tools.nanobox.io/installers/mac/nanobox.dmg
# is the official download host per the discussion with the project lead
# @tyler_flint
#
# nanbox just installs the nanobox binary.  
# Christopher Liljenstolpe <cask@cdl.is>  2015-Nov-18
cask :v1 => 'nanobox' do
  version :latest
  sha256 :no_check
  url 'https://s3.amazonaws.com/tools.nanobox.io/installers/mac/nanobox.dmg'
  name 'nanobox'
  homepage 'http://www.nanobox.io/'
  license :oss
  pkg 'nanobox.pkg'
  binary '/opt/nanobox/bin/nanobox'
end
