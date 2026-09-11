cask "font-noto-sans-duployan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/notosansduployan"
  name "Noto Sans Duployan"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Duployan"

  font "NotoSansDuployan-Bold.ttf"
  font "NotoSansDuployan-Regular.ttf"

  # No zap stanza required
end
