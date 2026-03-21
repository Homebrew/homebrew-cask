cask "font-annapurna-sil" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/annapurnasil"
  name "Annapurna SIL"
  homepage "https://fonts.google.com/specimen/Annapurna+SIL"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Annapurna SIL",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AnnapurnaSIL-Bold.ttf"
  font "AnnapurnaSIL-Regular.ttf"

  # No zap stanza required
end
