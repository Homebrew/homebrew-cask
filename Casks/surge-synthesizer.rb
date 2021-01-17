cask "surge-synthesizer" do
  version "1.8.0"
  sha256 "ceca8ad00bc41bbec9f379881e2b0ec3707f4a0fbeebc581d4202f6c1bb589a0"

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
