cask "eclipse-platform" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.39,202602260420"
  sha256 arm:   "52c2dcf7e4b628e57b11a971052f8616b419a6dc4cc1135c0f8801d702705388",
         intel: "971bbab95fb995a27b1f394189aeb3d9019dfc4f89d2d60d51a50fe1534b0aea"

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
