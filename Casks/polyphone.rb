cask "polyphone" do
  version "2.2,690"
  sha256 "bb44e3061c9617e7b2c7ef08a93fda59d0a3f94b3057a353d317f872d10f17b8"

  url "https://www.polyphone-soundfonts.com/en/download/file/#{version.csv.second}-polyphone-#{version.csv.first.dots_to_hyphens}-app-zip/latest/download"
  appcast "https://www.polyphone-soundfonts.com/en/download"
  name "Polyphone"
  homepage "https://polyphone-soundfonts.com/"

  app "polyphone-#{version.before_comma}.app"
end
