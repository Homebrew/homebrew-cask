cask "eclipse-platform" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.41,202608281142"
  sha256 arm:   "5d293fc45363baf7c7d38c37a007f35a8c49b99f6c6396b98ab18b4464e59d7e",
         intel: "702a6b2a16a84ac9f065a133623e1f626152007d2e6ffd8c11577d3960b2ce39"

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

  depends_on :macos

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Platform.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/org.eclipse.sdk.ide.plist",
  ]
end
