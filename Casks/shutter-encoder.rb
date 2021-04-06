cask "shutter-encoder" do
  version "14.7"
  sha256 "d8803deb5b698a96e05db0029c043f4ee3386e7f26a53b6b1571eeb8e73ad73f"

  url "https://www.shutterencoder.com/Shutter%20Encoder%20(MAC%20Version%20#{version}).zip"
  appcast "https://www.shutterencoder.com/changelog.txt"
  name "Shutter Encoder"
  desc "Video, audio and image converter"
  homepage "https://www.shutterencoder.com/"

  app "Shutter Encoder.app"

  uninstall_preflight do
    set_permissions "#{appdir}/Shutter Encoder.app", "0755"
  end
end
