class Injection < Cask
  version '5.1'
  sha256 'c5e6dbaca14e3b9ee7e084d6787047cc61345ec38c2614b7c8016525ef18de9c'

  url 'http://injectionforxcode.johnholdsworth.com/InjectionPluginV5.1.pkg'
  homepage 'http://injectionforxcode.com/'

  install 'InjectionPluginV5.1.pkg'
  uninstall :pkgutil => 'com.injectionforxcode.injectionPluginForXcode.InjectionPlugin.pkg',
            :quit => 'com.johnholdsworth.InjectionPluginIII',
            :files => '/Users/beng/Library/Application Support/Developer/Shared/Xcode/Plug-ins/InjectionPlugin.xcplugin'
end
