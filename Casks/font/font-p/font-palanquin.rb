cask "font-palanquin" do
  version "1.0.4"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/palanquin"
  name "Palanquin"
  homepage "https://fonts.google.com/specimen/Palanquin"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Palanquin",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Palanquin-Bold.ttf"
  font "Palanquin-ExtraLight.ttf"
  font "Palanquin-Light.ttf"
  font "Palanquin-Medium.ttf"
  font "Palanquin-Regular.ttf"
  font "Palanquin-SemiBold.ttf"
  font "Palanquin-Thin.ttf"

  # No zap stanza required
end
