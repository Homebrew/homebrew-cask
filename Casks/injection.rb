cask 'injection' do
  version '6.4'
  sha256 'a015934d2223345796757ceeb8bd8c1d21b8f63ed9fbd27b36ffe7e5a82b0933'

  # johnholdsworth.com is the official download host per the vendor homepage
  url "http://injectionforxcode.johnholdsworth.com/InjectionPluginV#{version}.pkg"
  name 'Injection for Xcode'
  homepage 'http://injectionforxcode.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "InjectionPluginV#{version}.pkg"

  uninstall pkgutil: 'com.injectionforxcode.injectionPluginForXcode.InjectionPlugin.pkg',
            quit:    'com.johnholdsworth.InjectionPluginIII'

  zap       delete: '~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/InjectionPlugin.xcplugin'
end
