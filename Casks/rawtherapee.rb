cask "rawtherapee" do
  version "5.8"
  sha256 "6fe7cd08bd59b1ca9135e587be0d600d62487d0b9baaa6157972135fe3018f8a"

  url "https://www.rawtherapee.com/shared/builds/mac/RawTherapee_#{version}.dmg"
  name "RawTherapee"
  desc "RAW photo processer"
  homepage "https://rawtherapee.com/"

  livecheck do
    url "https://github.com/Beep6581/RawTherapee"
    strategy :git
  end

  app "RawTherapee.app"

  zap trash: "~/Library/Application Support/RawTherapee"
end
