cask "font-hind-mysuru" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/hindmysuru"
  name "Hind Mysuru"
  homepage "https://github.com/itfoundry/hind-mysuru"

  font "HindMysuru-Bold.ttf"
  font "HindMysuru-Light.ttf"
  font "HindMysuru-Medium.ttf"
  font "HindMysuru-Regular.ttf"
  font "HindMysuru-SemiBold.ttf"

  # No zap stanza required
end
