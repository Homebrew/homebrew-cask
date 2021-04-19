cask "shutter-encoder" do
  version "14.9"
  sha256 "194228415951fb81e00e3a7e3a3bbd07159c733b3ab203df91938934b8f8a453"

  url "https://www.shutterencoder.com/Shutter%20Encoder%20#{version}%20Mac%2064bits.zip"
  name "Shutter Encoder"
  desc "Video, audio and image converter"
  homepage "https://www.shutterencoder.com/"

  livecheck do
    url "https://www.shutterencoder.com/changelog.txt"
    strategy :page_match
    regex(/Version\s*(\d+(?:\.\d+)*)\s*-/i)
  end

  app "Shutter Encoder.app"

  uninstall_preflight do
    set_permissions "#{appdir}/Shutter Encoder.app", "0755"
  end
end
