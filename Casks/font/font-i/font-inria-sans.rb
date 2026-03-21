cask "font-inria-sans" do
  version "1.2"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/inriasans"
  name "Inria Sans"
  homepage "https://fonts.google.com/specimen/Inria+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Inria Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "InriaSans-Bold.ttf"
  font "InriaSans-BoldItalic.ttf"
  font "InriaSans-Italic.ttf"
  font "InriaSans-Light.ttf"
  font "InriaSans-LightItalic.ttf"
  font "InriaSans-Regular.ttf"

  # No zap stanza required
end
