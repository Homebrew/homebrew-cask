cask "ananas-analytics-desktop-edition" do
  version "0.9.0"
  sha256 "cb4a73521d5f5ffb97405b3c7e041f73fd5044ab1ffe1ff6e967c0fb1555dec3"

  url "https://github.com/ananas-analytics/ananas-desktop/releases/download/v#{version}/Ananas.Analytics.Desktop.Edition-#{version}.macos.dmg",
      verified: "github.com/ananas-analytics/ananas-desktop/"
  name "Ananas Analytics Desktop Edition"
  desc "Hackable data integration & analysis tool"
  homepage "https://ananasanalytics.com/"

  app "Ananas Analytics Desktop Edition.app"

  caveats do
    requires_rosetta
  end
end
