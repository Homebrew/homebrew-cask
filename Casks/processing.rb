cask "processing" do
  arch arm: "aarch64", intel: "x64"

  version "4.2,1292"
  sha256 arm:   "25407063a5c121d4435f828592431726ea355cb796cb279f2b5d021920a0943f",
         intel: "081ac1c019d36fac546374308644d026922fbf59aa0445e29b7c252de90ec982"

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
