cask "processing@3" do
  version "3.5.4,0270"
  sha256 "4d64fe42a6c5c0863cc82e93a036e73731999ee9448be45bc322f91b0010bb6b"

  url "https://github.com/processing/processing/releases/download/processing-#{version.csv.second}-#{version.csv.first}/processing-#{version.csv.first}-macosx.zip",
      verified: "github.com/processing/processing/"
  name "Processing"
  desc "Flexible software sketchbook and a language for learning how to code"
  homepage "https://processing.org/"

  deprecate! date: "2024-07-28", because: :unmaintained

  conflicts_with cask: "processing"

  app "Processing.app"

  uninstall quit: "org.processing.app"

  zap trash: [
    "~/Library/Processing",
    "~/Preferences/org.processing.app.plist",
    "~/Preferences/processing.app.tools.plist",
  ]

  caveats do
    requires_rosetta
  end
end
