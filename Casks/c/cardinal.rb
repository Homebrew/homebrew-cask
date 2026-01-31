cask "cardinal" do
  version "26.01"
  sha256 "e4e753b22217f3968d1965d56c62c71251a29c6e8a0be3d226363c8d0a39c8bb"

  url "https://github.com/DISTRHO/Cardinal/releases/download/#{version}/Cardinal-macOS-universal-#{version}.pkg"
  name "Cardinal"
  desc "Virtual modular synthesiser plugin"
  homepage "https://github.com/DISTRHO/Cardinal"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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

  # No zap stanza required
end
