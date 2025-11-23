cask "font-unkempt" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "apache/unkempt"
  name "Unkempt"
  homepage "https://fonts.google.com/specimen/Unkempt"

  font "Unkempt-Bold.ttf"
  font "Unkempt-Regular.ttf"

  # No zap stanza required
end
