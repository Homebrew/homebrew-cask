cask 'syphon-virtual-screen' do
  version '1.3'
  sha256 '0cf56d171f3427d623d4b12d55e0342a34cd8d12dd7082c7ed372b5effac8a46'

  # github.com/andreacremaschi/Syphon-virtual-screen was verified as official when first introduced to the cask
  url 'https://github.com/andreacremaschi/Syphon-virtual-screen/releases/download/1.3/Syphon.Virtual.Screen.mpkg.zip'
  name 'Syphon Virtual Screen'
  homepage 'https://andreacremaschi.github.io/Syphon-virtual-screen/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Syphon Virtual Screen.mpkg'

  uninstall kext:   'EWProxyFrameBuffer',
            delete: '/System/Library/Caches/com.apple.kext.caches'

  caveats 'To use different resolutions modify EWProxyFramebuffer.kext/Contents/Info.plist'
end
