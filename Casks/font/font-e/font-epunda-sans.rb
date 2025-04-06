cask "font-epunda-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/epundasans"
  name "Epunda Sans"
  homepage "https://github.com/typofactur/epundasans"

  font "EpundaSans-Italic[wght].ttf"
  font "EpundaSans[wght].ttf"

  # No zap stanza required
end
