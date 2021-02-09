cask "surge-synthesizer" do
  version "1.8.1"
  sha256 "20aa7648b626ad06b35f63542ca928f629c41f2105cfc93681881152fbc0120c"

  url "https://github.com/surge-synthesizer/releases/releases/download/#{version}/Surge-#{version}-Setup.dmg",
      verified: "github.com/surge-synthesizer/releases/"
  appcast "https://github.com/surge-synthesizer/releases/releases.atom"
  name "Surge"
  desc "Hybrid synthesizer"
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
