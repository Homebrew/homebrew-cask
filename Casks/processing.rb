cask "processing" do
  version "3.5.4,0270"
  sha256 "4d64fe42a6c5c0863cc82e93a036e73731999ee9448be45bc322f91b0010bb6b"

  url "https://github.com/processing/processing/releases/download/processing-#{version.csv.second}-#{version.csv.first}/processing-#{version.csv.first}-macosx.zip",
      verified: "github.com/processing/processing/"
  name "Processing"
  desc "Flexible software sketchbook and a language for learning how to code"
  homepage "https://processing.org/"

  livecheck do
    url :url
    regex(%r{href=.*?tree/processing[._-](\d+)[._-]v?(\d+(?:\.\d+)+)}i)
    strategy :github_latest do |page|
      page.scan(regex)
          .map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  conflicts_with cask: [
    "homebrew/cask-versions/processing2",
    "homebrew/cask-versions/processing-beta",
  ]

  app "Processing.app"

  uninstall quit: "org.processing.app"

  zap trash: [
    "~/Library/Processing",
    "~/Preferences/org.processing.app.plist",
    "~/Preferences/processing.app.tools.plist",
  ]
end
