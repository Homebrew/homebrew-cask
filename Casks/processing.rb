cask "processing" do
  arch arm: "aarch64", intel: "x64"

  version "4.1.2,1290"
  sha256 arm:   "5abf3b555cbaa0b18d839c4f1259612a7f1a15d5c287c93a3768edf84f6042f4",
         intel: "2e30b2cd28a3b920fff125637b2d6c0d533101847c54663d24b402a5d3e1fd83"

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
