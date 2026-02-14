cask "eclipse-platform" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.38,202512010920"
  sha256 arm:   "50684021e9710821188849cd3b26d9a9675bf5327a5065147d547f92d3b1d1a7",
         intel: "44887b264c8887ed01c4d3995c21d1d6a405c80b20005598ff4ea9cb348357fd"

  url "https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.major}/R-#{version.csv.first}-#{version.csv.second}/eclipse-SDK-#{version.csv.first}-macosx-cocoa-#{arch}.dmg&mirror_id=1"
  name "Eclipse SDK"
  desc "SDK for the Eclipse IDE"
  homepage "https://eclipse.org/"

  # The download page (https://download.eclipse.org/eclipse/downloads/) uses
  # JavaScript to render download links from a JSON file.
  livecheck do
    url "https://download.eclipse.org/eclipse/downloads/data.json"
    regex(/R-(\d+(?:\.\d+)*)-(\d+)/i)
    strategy :json do |json, regex|
      json["releases"].map do |item|
        match = item["path"]&.match(regex)
        next unless match

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Platform.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/org.eclipse.sdk.ide.plist",
  ]
end
