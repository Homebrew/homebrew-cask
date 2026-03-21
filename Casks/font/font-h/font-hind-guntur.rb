cask "font-hind-guntur" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/hindguntur"
  name "Hind Guntur"
  homepage "https://fonts.google.com/specimen/Hind+Guntur"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hind Guntur",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HindGuntur-Bold.ttf"
  font "HindGuntur-Light.ttf"
  font "HindGuntur-Medium.ttf"
  font "HindGuntur-Regular.ttf"
  font "HindGuntur-SemiBold.ttf"

  # No zap stanza required
end
