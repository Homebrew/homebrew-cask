cask "font-monego" do
  version :latest
  sha256 :no_check

  url "https://github.com/cseelus/monego.git",
      branch:    "master",
      only_path: "Monego"
  name "Monego"
  homepage "https://github.com/cseelus/monego"

  font "Monego-Bold.otf"
  font "Monego-BoldItalic.otf"
  font "Monego-Italic.otf"
  font "Monego-Regular.otf"

  # No zap stanza required
end
