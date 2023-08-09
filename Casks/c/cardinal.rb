cask "cardinal" do
  version "23.07"
  sha256 "353f8ef0d47f968968e786234cd1e729755942a0ddcbda4d3d8314744a7b4054"

  url "https://github.com/DISTRHO/Cardinal/releases/download/#{version}/Cardinal-macOS-universal-10.15-#{version}.pkg"
  name "Cardinal"
  desc "Virtual modular synthesizer plugin"
  homepage "https://github.com/DISTRHO/Cardinal"

  pkg "Cardinal-macOS-universal-10.15-#{version}.pkg"

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
