cask "font-pt-serif-caption" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ptserifcaption"
  name "PT Serif Caption"
  homepage "https://fonts.google.com/specimen/PT+Serif+Caption"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "PT Serif Caption",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PT_Serif-Caption-Web-Italic.ttf"
  font "PT_Serif-Caption-Web-Regular.ttf"

  # No zap stanza required
end
