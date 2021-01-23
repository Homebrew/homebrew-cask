cask "shutter-encoder" do
  version "14.6"
  sha256 "7504fa09c384609089b8817d5971195bc34f3f18d3dd4ef0796b2310b5cf606f"

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
