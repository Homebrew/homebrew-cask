cask "cardinal" do
  version "22.10"
  sha256 "8124eed0df57a16e7bce51412f111f14b668882102047cdb619717c52cacbf87"

  url "https://github.com/DISTRHO/Cardinal/releases/download/#{version}/Cardinal-macOS-universal-#{version}.pkg"
  name "Cardinal"
  desc "Virtual modular synthesizer plugin"
  homepage "https://github.com/DISTRHO/Cardinal"

  pkg "Cardinal-macOS-universal-#{version}.pkg"

  uninstall pkgutil: [
    "studio.kx.distrho.cardinal.resources",
    "studio.kx.distrho.plugins.cardinal.clapbundles",
    "studio.kx.distrho.plugins.cardinal.components",
    "studio.kx.distrho.plugins.cardinal.jack",
    "studio.kx.distrho.plugins.cardinal.lv2bundles",
    "studio.kx.distrho.plugins.cardinal.native",
    "studio.kx.distrho.plugins.cardinal.vst2bundles",
    "studio.kx.distrho.plugins.cardinal.vst3bundles",
  ]
end
