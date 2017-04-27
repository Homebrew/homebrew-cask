cask 'brewtarget' do
  version '2.3.0'
  sha256 'f1b3b33029f7d7cd873a1cdbf0741da22085f53dcefa2943dcfa8d35eda89fdd'

  # launchpad.net/brewtarget was verified as official when first introduced to the cask
  url "https://launchpad.net/brewtarget/trunk/#{version}/+download/Brewtarget-#{version}.dmg"
  appcast 'https://github.com/Brewtarget/brewtarget/releases.atom',
          checkpoint: '9418fa17df72d60adaf439fef0511aeeeedb568682a3d04aa2f808cbc76ade7e'
  name 'brewtarget'
  homepage 'http://www.brewtarget.org/'

  app 'brewtarget.app'
end
