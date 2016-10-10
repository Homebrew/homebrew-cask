cask 'ifunbox' do
  version '1.8'
  sha256 '19bef7c6079cb3d13dc109478c473e420643e3164ed02b668f76220f60884a11'

  url "http://dl.i-funbox.com/updates/ifunbox.mac/#{version}/ifunboxmac.dmg"
  appcast 'http://dl.i-funbox.com/updates/ifunbox.mac/update.xml',
          checkpoint: '1eebc7dda00de58c66b94300a3bf557615b96ab2b247ae460549ac35fc047e29'
  name 'iFunBox'
  homepage 'http://www.i-funbox.com/'

  app 'iFunBox.app'
end
