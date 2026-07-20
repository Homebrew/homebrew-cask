cask "font-hibur-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hiburmono/HiburMono-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hibur Mono"
  homepage "https://fonts.google.com/specimen/Hibur+Mono"

  font "HiburMono-Regular.ttf"

  # No zap stanza required
end
