cask "rawtherapee" do
  version "5.8"
  sha256 "6fe7cd08bd59b1ca9135e587be0d600d62487d0b9baaa6157972135fe3018f8a"

  url "https://www.rawtherapee.com/shared/builds/mac/RawTherapee_#{version}.dmg"
  appcast "https://github.com/Beep6581/RawTherapee/releases.atom"
  name "RawTherapee"
  desc "Cross-platform raw photo processing program"
  homepage "https://rawtherapee.com/"

  app "RawTherapee.app"
end
