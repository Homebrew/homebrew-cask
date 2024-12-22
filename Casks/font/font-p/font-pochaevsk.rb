cask "font-pochaevsk" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pochaevsk/Pochaevsk-Regular.ttf"
  name "Pochaevsk"
  homepage "https://github.com/slavonic/pochaevsk"

  font "Pochaevsk-Regular.ttf"

  # No zap stanza required
end
