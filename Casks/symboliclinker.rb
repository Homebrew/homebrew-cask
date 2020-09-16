cask "symboliclinker" do
  version "2.1.1"
  sha256 "58ed5a7992686f75981e4fe79678a9b9350267c487dd9cb4dc875ab6c87cfe08"

  url "https://github.com/nickzman/symboliclinker/releases/download/v#{version}/SymbolicLinker#{version}.dmg"
  appcast "https://github.com/nickzman/symboliclinker/releases.atom"
  name "SymbolicLinker"
  homepage "https://github.com/nickzman/symboliclinker"

  service "SymbolicLinker.service"
end
