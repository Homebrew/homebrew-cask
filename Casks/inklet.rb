cask 'inklet' do
  version '2.0.0'
  sha256 '5a5fd7d6740faf00d3f49d6615b1fa6c3d212e466166eee9d71b2cafdf1b90c3'

  url "https://tenonedesign.com/apps/inklet/Inklet-#{version}.zip"
  appcast 'https://tenonedesign.com/apps/inklet/profileInfo2.php',
          checkpoint: '9ba3a97bdfd1e57009d7add1aedfefa50df0149b717b5f5ded075a962020d33f'
  name 'Inklet'
  homepage 'https://tenonedesign.com/inklet.php'

  app 'Inklet.app'
end
