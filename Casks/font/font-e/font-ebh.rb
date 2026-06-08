cask "font-ebh" do
  version "1.0.0"
  sha256 "6787471d7766a8be31f2e601620e402ff43bafd183d626a8df75767e91052af3"

  url "https://github.com/rubywku/exeterbookhand/releases/download/v#{version}/EBH-v#{version}.zip",
      verified: "github.com/rubywku/exeterbookhand/"
  name "EBH"
  name "Exeter Book Hand"
  homepage "https://exeterbookhand.com/"

  font "EBH-v#{version}/EBH Alternates.otf"
  font "EBH-v#{version}/EBH Facsimile.otf"
  font "EBH-v#{version}/EBH Initials.otf"
  font "EBH-v#{version}/EBH Runes.otf"

  # No zap stanza required
end
