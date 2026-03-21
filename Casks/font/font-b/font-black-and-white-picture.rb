cask "font-black-and-white-picture" do
  version "1.64"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/blackandwhitepicture/BlackAndWhitePicture-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Black And White Picture"
  homepage "https://fonts.google.com/specimen/Black+And+White+Picture"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Black And White Picture",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BlackAndWhitePicture-Regular.ttf"

  # No zap stanza required
end
