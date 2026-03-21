cask "font-hind-siliguri" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/hindsiliguri"
  name "Hind Siliguri"
  homepage "https://fonts.google.com/specimen/Hind+Siliguri"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hind Siliguri",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HindSiliguri-Bold.ttf"
  font "HindSiliguri-Light.ttf"
  font "HindSiliguri-Medium.ttf"
  font "HindSiliguri-Regular.ttf"
  font "HindSiliguri-SemiBold.ttf"

  # No zap stanza required
end
