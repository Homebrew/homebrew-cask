cask "surge-synthesizer" do
  version "1.7.0"
  sha256 "7dfa884bc9680c2ba54bc38255528fb9c008ea3ef6f930c920d96db37f2e3a01"

  # github.com/surge-synthesizer/releases/ was verified as official when first introduced to the cask
  url "https://github.com/surge-synthesizer/releases/releases/download/#{version}/Surge-#{version}-Setup.dmg"
  appcast "https://github.com/surge-synthesizer/releases/releases.atom"
  name "Surge - A Digital Synthesizer"
  homepage "https://surge-synthesizer.github.io/"

  pkg "Surge-#{version}-Setup.pkg"

  uninstall pkgutil: [
    "com.vemberaudio.vst2.pkg",
    "com.vemberaudio.vst3.pkg",
    "com.vemberaudio.au.pkg",
    "com.vemberaudio.resources.pkg",
    "org.surge-synthesizer.fxau.pkg",
    "org.surge-synthesizer.fxvst3.pkg",
  ]
end
