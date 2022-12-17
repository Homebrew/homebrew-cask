cask "processing" do
  arch arm: "aarch64", intel: "x64"

  version "4.1.1,1289"
  sha256 arm:   "e4c5d8b97c7e3bf5c14448037ce7108b04df05941d906c323db9adbcbdf9adc5",
         intel: "bbf27aad42cc72525e96f6992d35c328dc7bdc53cb6777f27703e48263646f89"

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
