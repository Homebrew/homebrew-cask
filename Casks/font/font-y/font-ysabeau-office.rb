cask "font-ysabeau-office" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ysabeauoffice"
  name "Ysabeau Office"
  homepage "https://fonts.google.com/specimen/Ysabeau+Office"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ysabeau Office",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "YsabeauOffice-Italic[wght].ttf"
  font "YsabeauOffice[wght].ttf"

  # No zap stanza required
end
