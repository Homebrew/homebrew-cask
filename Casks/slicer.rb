cask 'slicer' do
  version '4.8.0.26489,700005'
  sha256 '9a13ef5084b1aee1fd56891c7c61cd5d8f093f17168fe996f067548cf4e825c8'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  appcast 'https://github.com/Slicer/Slicer/releases.atom',
          checkpoint: '51525b99e07c45a2001ee17dbd400a25060d465255498344d9e132931787b91d'
  name '3D Slicer'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
