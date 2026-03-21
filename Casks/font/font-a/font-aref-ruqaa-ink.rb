cask "font-aref-ruqaa-ink" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/arefruqaaink"
  name "Aref Ruqaa Ink"
  homepage "https://fonts.google.com/specimen/Aref+Ruqaa+Ink"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Aref Ruqaa Ink",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ArefRuqaaInk-Bold.ttf"
  font "ArefRuqaaInk-Regular.ttf"

  # No zap stanza required
end
