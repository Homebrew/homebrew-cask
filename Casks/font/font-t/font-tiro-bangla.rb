cask "font-tiro-bangla" do
  version "1.52"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirobangla"
  name "Tiro Bangla"
  homepage "https://fonts.google.com/specimen/Tiro+Bangla"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tiro Bangla",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TiroBangla-Italic.ttf"
  font "TiroBangla-Regular.ttf"

  # No zap stanza required
end
