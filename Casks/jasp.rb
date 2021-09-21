cask "jasp" do
  version "0.15.0.0"
  sha256 "df1b186c23c739654d4af67ab225aa09a446e165efb2a70a9fee474506efadf9"

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  appcast "https://jasp-stats.org/download/",
          must_contain: version.sub(/(.0)+$/, "")
  name "JASP"
  homepage "https://jasp-stats.org/"

  depends_on macos: ">= :high_sierra"

  app "JASP.app"
end
