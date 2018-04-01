cask 'r128x-gui' do
  version '0.22'
  sha256 '3684565fdc7dfe6bf51f43083fec45fee1078fc6d50df877fa44cca38faf288a'

  # dropbox.com/s/rjdqzu8mvtoquvp/ was verified as official when first introduced to the cask
  url "https://www.dropbox.com/s/rjdqzu8mvtoquvp/r128x-gui-#{version.dots_to_hyphens}.zip?dl=1"
  name 'r128x-gui'
  homepage 'https://github.com/audionuma/r128x'

  app 'r128x-gui.app'
end
