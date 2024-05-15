cask "font-lusitana" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lusitana"
  name "Lusitana"
  homepage "https://fonts.google.com/specimen/Lusitana"

  font "Lusitana-Bold.ttf"
  font "Lusitana-Regular.ttf"

  # No zap stanza required
end
