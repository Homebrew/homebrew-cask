cask "font-hind-madurai" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/hindmadurai"
  name "Hind Madurai"
  homepage "https://fonts.google.com/specimen/Hind+Madurai"

  font "HindMadurai-Bold.ttf"
  font "HindMadurai-Light.ttf"
  font "HindMadurai-Medium.ttf"
  font "HindMadurai-Regular.ttf"
  font "HindMadurai-SemiBold.ttf"

  # No zap stanza required
end
