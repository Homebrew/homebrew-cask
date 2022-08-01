cask "cardinal" do
  version "22.07"
  sha256 "2d9207193a82bdcd0c237f667579d86db44664d96cabac98687e901d3485f0e6"

  url "https://github.com/DISTRHO/Cardinal/releases/download/#{version}/Cardinal-macOS-universal-#{version}.pkg"
  name "Cardinal"
  desc "Virtual modular synthesizer plugin"
  homepage "https://github.com/DISTRHO/Cardinal"

  pkg "Cardinal-macOS-universal-#{version}.pkg"

  uninstall pkgutil: [
    "studio.kx.distrho.cardinal.resources",
    "studio.kx.distrho.plugins.cardinal.components",
    "studio.kx.distrho.plugins.cardinal.lv2bundles",
    "studio.kx.distrho.plugins.cardinal.vst2bundles",
    "studio.kx.distrho.plugins.cardinal.vst3bundles",
  ]
end
