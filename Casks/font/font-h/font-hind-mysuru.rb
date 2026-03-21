cask "font-hind-mysuru" do
  version "0.703"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/hindmysuru"
  name "Hind Mysuru"
  homepage "https://fonts.google.com/specimen/Hind+Mysuru"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hind Mysuru",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HindMysuru-Bold.ttf"
  font "HindMysuru-Light.ttf"
  font "HindMysuru-Medium.ttf"
  font "HindMysuru-Regular.ttf"
  font "HindMysuru-SemiBold.ttf"

  # No zap stanza required
end
