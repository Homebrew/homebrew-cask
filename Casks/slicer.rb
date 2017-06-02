cask 'slicer' do
  version '4.6.2,561385'
  sha256 '1b732c6901897707bc6edc568dadf1c7e79ee152ede400dd286b7b6290921041'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  appcast 'https://github.com/Slicer/Slicer/releases.atom',
          checkpoint: 'cf03b970cc317124c0aacad963f5abb6c76d7742cbf722a210cb738a17bf9dd8'
  name '3D Slicer'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
