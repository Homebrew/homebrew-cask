cask "font-tajawal" do
  version "1.700"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tajawal"
  name "Tajawal"
  homepage "https://fonts.google.com/specimen/Tajawal"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tajawal",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Tajawal-Black.ttf"
  font "Tajawal-Bold.ttf"
  font "Tajawal-ExtraBold.ttf"
  font "Tajawal-ExtraLight.ttf"
  font "Tajawal-Light.ttf"
  font "Tajawal-Medium.ttf"
  font "Tajawal-Regular.ttf"

  # No zap stanza required
end
