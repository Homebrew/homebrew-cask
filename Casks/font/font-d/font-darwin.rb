cask "font-darwin" do
  version :latest
  sha256 :no_check

  url "https://github.com/topological-modular-forms/Darwin-Typeface/raw/main/output/DarwinSerif-Regular.otf"
  name "Darwin"
  desc "Typeface for books and articles with a focus on scientific writing"
  homepage "https://github.com/topological-modular-forms/Darwin-Typeface"

  font "DarwinSerif-Regular.otf"

  # No zap stanza required
end
