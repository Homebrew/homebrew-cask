cask 'quicklock' do
  version '1.5'
  sha256 '8d3847602419040f860964bad937abddbd1b7b3ccd7f0dcd3bc0d083f16d3295'

  # amazonaws.com/f.cl.ly was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/f.cl.ly/items/1e3G0g2b1g0z201m3j1f/QuickLock.app.zip'
  appcast 'https://www.thnkdev.com/quicklockapp/appcast.xml'
  name 'QuickLock'
  homepage 'https://www.thnkdev.com/quicklockapp/'

  app 'QuickLock.app'
end
