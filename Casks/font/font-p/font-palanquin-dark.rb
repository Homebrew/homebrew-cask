cask "font-palanquin-dark" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/palanquindark"
  name "Palanquin Dark"
  homepage "https://fonts.google.com/specimen/Palanquin+Dark"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Palanquin Dark",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PalanquinDark-Bold.ttf"
  font "PalanquinDark-Medium.ttf"
  font "PalanquinDark-Regular.ttf"
  font "PalanquinDark-SemiBold.ttf"

  # No zap stanza required
end
