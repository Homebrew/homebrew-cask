cask 'injection' do
  version '6.4'
  sha256 'a015934d2223345796757ceeb8bd8c1d21b8f63ed9fbd27b36ffe7e5a82b0933'

  # injectionforxcode.johnholdsworth.com was verified as official when first introduced to the cask
  url "http://injectionforxcode.johnholdsworth.com/InjectionPluginV#{version}.pkg"
  name 'Injection for Xcode'
  homepage 'http://injectionforxcode.com/'

  pkg "InjectionPluginV#{version}.pkg"

  uninstall pkgutil: 'com.injectionforxcode.injectionPluginForXcode.InjectionPlugin.pkg',
            quit:    'com.johnholdsworth.InjectionPluginIII'

  zap trash: '~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/InjectionPlugin.xcplugin'
end
