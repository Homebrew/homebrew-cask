cask 'sourcetrail' do
  version '2020.1.117'
  sha256 'a63122d1b7e4b89e0103fe837d86453a8cdef24cdb552e6a35fa58938494040d'

  # github.com/CoatiSoftware/Sourcetrail/ was verified as official when first introduced to the cask
  url "https://github.com/CoatiSoftware/Sourcetrail/releases/download/#{version}/Sourcetrail_#{version.dots_to_underscores}_macOS_64bit.dmg"
  appcast 'https://github.com/CoatiSoftware/Sourcetrail/releases.atom'
  name 'Sourcetrail'
  homepage 'https://www.sourcetrail.com/'

  app 'Sourcetrail.app'
end
