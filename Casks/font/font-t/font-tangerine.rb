cask "font-tangerine" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/tangerine"
  name "Tangerine"
  homepage "https://fonts.google.com/specimen/Tangerine"

  font "Tangerine-Bold.ttf"
  font "Tangerine-Regular.ttf"

  # No zap stanza required
end
