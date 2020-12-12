cask "surge-synthesizer" do
  version "1.7.1"
  sha256 "4a1020bf4f5606c541c28e6def2d282a4fb13c29cfa39f1094b02cc94e335d9c"

  # github.com/surge-synthesizer/releases/ was verified as official when first introduced to the cask
  url "https://github.com/surge-synthesizer/releases/releases/download/#{version}/Surge-#{version}-Setup.dmg"
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
