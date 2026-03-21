cask "font-maitree" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/maitree"
  name "Maitree"
  homepage "https://fonts.google.com/specimen/Maitree"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Maitree",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Maitree-Bold.ttf"
  font "Maitree-ExtraLight.ttf"
  font "Maitree-Light.ttf"
  font "Maitree-Medium.ttf"
  font "Maitree-Regular.ttf"
  font "Maitree-SemiBold.ttf"

  # No zap stanza required
end
