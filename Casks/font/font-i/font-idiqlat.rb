cask "font-idiqlat" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/idiqlat"
  name "Idiqlat"
  homepage "https://fonts.google.com/specimen/Idiqlat"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Idiqlat",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Idiqlat-ExtraLight.ttf"
  font "Idiqlat-Light.ttf"
  font "Idiqlat-Regular.ttf"

  # No zap stanza required
end
