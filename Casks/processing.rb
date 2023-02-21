cask "processing" do
  arch arm: "aarch64", intel: "x64"

  version "4.1.3,1291"
  sha256 arm:   "a22ace015d1ce3928e15f5ed9ef7f96d684a2e1bce52d8d182f4c38c4d9c1a3e",
         intel: "6b2e3bf963c35fd76c2a24d52088dc039f26b83c745f82b8b6b26396fadef07e"

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
