cask "font-syne-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/synemono/SyneMono-Regular.ttf"
  name "Syne Mono"
  homepage "https://fonts.google.com/specimen/Syne+Mono"

  font "SyneMono-Regular.ttf"

  # No zap stanza required
end
