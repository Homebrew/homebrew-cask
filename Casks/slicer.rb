cask 'slicer' do
  version '4.10.0.27501,896287'
  sha256 '986b771a6d269cab3742a6cc565bb53f4f4221083adfb51cdfcd840016bcca42'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  appcast 'https://github.com/Slicer/Slicer/releases.atom'
  name '3D Slicer'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
