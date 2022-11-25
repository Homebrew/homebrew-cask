cask "processing" do
  arch arm: "aarch64", intel: "x64"

  version "4.0.2,1287"
  sha256 arm:   "a43aae4a5a33ef69474f545ede2233c27a62dd7d1b3c3be50b4b5334097686df",
         intel: "2b98b804ab49283886d180a8778dd4f38b66d56974e09b54588570500c111faf"

  url "https://github.com/processing/processing4/releases/download/processing-#{version.csv.second}-#{version.csv.first}/processing-#{version.csv.first}-macos-#{arch}.zip",
      verified: "github.com/processing/processing4/"
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
    "homebrew/cask-versions/processing3",
  ]
  depends_on macos: ">= :catalina"

  app "Processing.app"

  uninstall quit: "org.processing.app"

  zap trash: [
    "~/Library/Processing",
    "~/Preferences/org.processing.app.plist",
    "~/Preferences/org.processing.four.plist",
    "~/Preferences/processing.app.tools.plist",
  ]
end
