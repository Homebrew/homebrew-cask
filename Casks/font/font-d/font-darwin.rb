cask "font-darwin" do
  version :latest
  sha256 :no_check

  url "https://github.com/topological-modular-forms/Darwin-Typeface/raw/main/output/DarwinSerif-Regular.otf"
  name "Darwin"
  homepage "https://github.com/topological-modular-forms/Darwin-Typeface"

  font "DarwinSerif-Regular.otf"

  # No zap stanza required
end
