cask "font-biryani" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/biryani"
  name "Biryani"
  homepage "https://fonts.google.com/specimen/Biryani"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Biryani",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Biryani-Black.ttf"
  font "Biryani-Bold.ttf"
  font "Biryani-ExtraBold.ttf"
  font "Biryani-ExtraLight.ttf"
  font "Biryani-Light.ttf"
  font "Biryani-Regular.ttf"
  font "Biryani-SemiBold.ttf"

  # No zap stanza required
end
