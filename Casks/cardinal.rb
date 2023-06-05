cask "cardinal" do
  version "23.02"
  sha256 "e0ba117127846cf6ff520cbc9307940650fbf4524909e0536088e7675eb52710"

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
