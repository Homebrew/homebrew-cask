cask "font-charmonman" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/charmonman"
  name "Charmonman"
  homepage "https://fonts.google.com/specimen/Charmonman"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Charmonman",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Charmonman-Bold.ttf"
  font "Charmonman-Regular.ttf"

  # No zap stanza required
end
