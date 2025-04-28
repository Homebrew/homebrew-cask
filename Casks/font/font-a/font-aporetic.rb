cask "font-aporetic" do
  version "1.2.0"
  sha256 "76ffe7644729f001583594def5c904ba1aa80b69373b355a3ce196519a13af9c"

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
