cask "font-martel-sans" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/martelsans"
  name "Martel Sans"
  homepage "https://fonts.google.com/specimen/Martel+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Martel Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MartelSans-Black.ttf"
  font "MartelSans-Bold.ttf"
  font "MartelSans-ExtraBold.ttf"
  font "MartelSans-ExtraLight.ttf"
  font "MartelSans-Light.ttf"
  font "MartelSans-Regular.ttf"
  font "MartelSans-SemiBold.ttf"

  # No zap stanza required
end
