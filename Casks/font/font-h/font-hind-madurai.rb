cask "font-hind-madurai" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/hindmadurai"
  name "Hind Madurai"
  homepage "https://fonts.google.com/specimen/Hind+Madurai"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hind Madurai",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HindMadurai-Bold.ttf"
  font "HindMadurai-Light.ttf"
  font "HindMadurai-Medium.ttf"
  font "HindMadurai-Regular.ttf"
  font "HindMadurai-SemiBold.ttf"

  # No zap stanza required
end
