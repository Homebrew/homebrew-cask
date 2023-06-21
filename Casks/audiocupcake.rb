cask "rectangle" do
  version "1.0.18"
  sha256 "904bd9876dbb6bbd272b9bd250057b2421495fa21a88e3cda4392297cadd6fc9"

  url "https://audiocupcake.com/wp-content/uploads/2020/02/AudioCupcake%20#{version}.dmg",
  name "AudioCupcake"
  desc "Master your audiobook narration and podcasts"
  homepage "https://www.audiocupcake.com/"

  livecheck do
    url "https://audiocupcake.com/wp-content/uploads/2020/02/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "AudioCupcake.app"
end
