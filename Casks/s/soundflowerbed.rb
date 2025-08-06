cask "soundflowerbed" do
  version "2.0.0"
  sha256 "b6946abb69bd0b154462181ed0c46fc5cbf6bb527b2f891ff97575382627d5d9"

  url "https://github.com/mLupine/SoundflowerBed/releases/download/#{version}-release/SoundflowerBed-#{version}-release.dmg"
  name "SoundflowerBed"
  desc "Taps into Soundflower channels and route them to an audio device"
  homepage "https://github.com/mLupine/SoundflowerBed"

  deprecate! date: "2024-05-16", because: :discontinued
  disable! date: "2025-05-16", because: :discontinued

  app "SoundflowerBed.app"
end
