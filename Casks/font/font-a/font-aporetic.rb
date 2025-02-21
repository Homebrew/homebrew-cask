cask "font-aporetic" do
  version "1.1.0"
  sha256 "17e394ea286c2ecf6b7abbe25fc869f233796aa71678a9ef682df57164384f93"

  url "https://github.com/protesilaos/aporetic/archive/refs/tags/#{version}.tar.gz"
  name "Aporetic"
  homepage "https://github.com/protesilaos/aporetic"

  font "aporetic-#{version}/aporetic-sans/TTF/aporetic-sans-normalbolditalic.ttf"
  font "aporetic-#{version}/aporetic-sans/TTF/aporetic-sans-normalboldupright.ttf"
  font "aporetic-#{version}/aporetic-sans/TTF/aporetic-sans-normalregularitalic.ttf"
  font "aporetic-#{version}/aporetic-sans/TTF/aporetic-sans-normalregularupright.ttf"
  font "aporetic-#{version}/aporetic-sans-mono/TTF/aporetic-sans-mono-normalbolditalic.ttf"
  font "aporetic-#{version}/aporetic-sans-mono/TTF/aporetic-sans-mono-normalboldupright.ttf"
  font "aporetic-#{version}/aporetic-sans-mono/TTF/aporetic-sans-mono-normalregularitalic.ttf"
  font "aporetic-#{version}/aporetic-sans-mono/TTF/aporetic-sans-mono-normalregularupright.ttf"
  font "aporetic-#{version}/aporetic-serif/TTF/aporetic-serif-normalbolditalic.ttf"
  font "aporetic-#{version}/aporetic-serif/TTF/aporetic-serif-normalboldupright.ttf"
  font "aporetic-#{version}/aporetic-serif/TTF/aporetic-serif-normalregularitalic.ttf"
  font "aporetic-#{version}/aporetic-serif/TTF/aporetic-serif-normalregularupright.ttf"
  font "aporetic-#{version}/aporetic-serif-mono/TTF/aporetic-serif-mono-normalbolditalic.ttf"
  font "aporetic-#{version}/aporetic-serif-mono/TTF/aporetic-serif-mono-normalboldupright.ttf"
  font "aporetic-#{version}/aporetic-serif-mono/TTF/aporetic-serif-mono-normalregularitalic.ttf"
  font "aporetic-#{version}/aporetic-serif-mono/TTF/aporetic-serif-mono-normalregularupright.ttf"

  # No zap stanza required
end
