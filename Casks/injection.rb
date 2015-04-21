cask :v1 => 'injection' do
  version '5.1'
  sha256 'c5e6dbaca14e3b9ee7e084d6787047cc61345ec38c2614b7c8016525ef18de9c'

  # johnholdsworth.com is the official download host per the vendor homepage
  url "http://injectionforxcode.johnholdsworth.com/InjectionPluginV#{version}.pkg"
  name 'Injection for Xcode'
  homepage 'http://injectionforxcode.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "InjectionPluginV#{version}.pkg"

  uninstall :pkgutil => 'com.injectionforxcode.injectionPluginForXcode.InjectionPlugin.pkg',
            :quit => 'com.johnholdsworth.InjectionPluginIII'
  zap       :delete => '~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/InjectionPlugin.xcplugin'
end
