cask 'syphon-virtual-screen' do
  version '1.3'
  sha256 '0cf56d171f3427d623d4b12d55e0342a34cd8d12dd7082c7ed372b5effac8a46'

  # github.com/andreacremaschi/Syphon-virtual-screen was verified as official when first introduced to the cask
  url "https://github.com/andreacremaschi/Syphon-virtual-screen/releases/download/#{version}/Syphon.Virtual.Screen.mpkg.zip"
  appcast 'https://github.com/andreacremaschi/Syphon-virtual-screen/releases.atom',
          checkpoint: '99793e70b315957b663123c844fb442f2fffef84e7ec4731506b6324fc70fcca'
  name 'Syphon Virtual Screen'
  homepage 'https://andreacremaschi.github.io/Syphon-virtual-screen/'

  pkg 'Syphon Virtual Screen.mpkg'

  uninstall kext:   'EWProxyFrameBuffer',
            delete: '/System/Library/Caches/com.apple.kext.caches'

  caveats 'To use different resolutions modify EWProxyFramebuffer.kext/Contents/Info.plist'
end
