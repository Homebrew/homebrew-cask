cask "processing" do
  arch arm: "aarch64", intel: "x64"

  version "4.3.4,1297"
  sha256 arm:   "aefd88706c2bdca9590c38d7995df9f4192c5a7b28672f5791e0cf46ae3ef8d6",
         intel: "60dd3648492986121f24313d9ea90f34b2043b50a06f6255aade0ea892e12ceb"

  url "https://github.com/processing/processing4/releases/download/processing-#{version.csv.second}-#{version.csv.first}/processing-#{version.csv.first}-macos-#{arch}.zip",
      verified: "github.com/processing/processing4/"
  name "Processing"
  desc "Flexible software sketchbook and a language for learning how to code"
  homepage "https://processing.org/"

  livecheck do
    url :url
    regex(/^processing[._-](\d+(?:\.\d+)*)[@_-](\d+(?:\.\d+)+)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  conflicts_with cask: "processing@3"
  depends_on macos: ">= :mojave"

  app "Processing.app"

  uninstall quit: "org.processing.app"

  zap trash: [
    "~/Library/Preferences/org.processing.app.plist",
    "~/Library/Preferences/org.processing.four.plist",
    "~/Library/Preferences/processing.app.tools.plist",
    "~/Library/Processing",
  ]
end
