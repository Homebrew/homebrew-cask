cask "cardinal" do
  version "22.06"
  sha256 "9a0f861bb97cf8ff6708b845462c78fa1acd5c3dbfa3025a3824d6d4929c1f18"

  url "https://github.com/DISTRHO/Cardinal/releases/download/#{version}/Cardinal-macOS-universal-#{version}.pkg"
  name "Cardinal"
  desc "Virtual modular synthesizer plugin"
  homepage "https://github.com/DISTRHO/Cardinal"

  pkg "Cardinal-macOS-universal-#{version}.pkg"

  uninstall pkgutil: "studio.kx.distrho.cardinal"
end
