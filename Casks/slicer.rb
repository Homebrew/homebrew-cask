cask 'slicer' do
  version '4.6.2,561385'
  sha256 '1b732c6901897707bc6edc568dadf1c7e79ee152ede400dd286b7b6290921041'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  appcast 'https://github.com/Slicer/Slicer/releases.atom',
          checkpoint: '0ef602dd10c1c07f06e9ab6d168c2977b3fae564891e6d170498804eedd76f12'
  name '3D Slicer'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
