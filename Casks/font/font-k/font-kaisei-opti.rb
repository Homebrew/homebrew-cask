cask "font-kaisei-opti" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kaiseiopti"
  name "Kaisei Opti"
  homepage "https://fonts.google.com/specimen/Kaisei+Opti"

  font "KaiseiOpti-Bold.ttf"
  font "KaiseiOpti-Medium.ttf"
  font "KaiseiOpti-Regular.ttf"

  # No zap stanza required
end
