# typed: true
# frozen_string_literal: true

cask "font-darwin" do
  version :latest
  sha256 :no_check

  url "https://github.com/topological-modular-forms/Darwin-Typeface/raw/main/output/DarwinSerif-Regular.ttf"
  name "Darwin"
  homepage "https://github.com/topological-modular-forms/Darwin-Typeface/tree/main"

  font "DarwinSerif-Regular.ttf"

  # No zap stanza required
end