cask "font-aref-ruqaa" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/arefruqaa"
  name "Aref Ruqaa"
  homepage "https://fonts.google.com/specimen/Aref+Ruqaa"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Aref Ruqaa",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ArefRuqaa-Bold.ttf"
  font "ArefRuqaa-Regular.ttf"

  # No zap stanza required
end
