cask "eclipse-platform" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.40,202606010713"
  sha256 arm:   "fad0214f7cde2041e957a48948f12176a1b87ffc20c572f2cd64fba3da6854fd",
         intel: "8ac8f1d8b8e5345014c92fdd4c3c25ae81fe2aabb186b7d125a17f8b537a49a9"

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

  depends_on macos: :big_sur

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Platform.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/org.eclipse.sdk.ide.plist",
  ]
end
