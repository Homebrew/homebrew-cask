cask "paperspace" do
  version "11.18.6.148"
  sha256 "64be7220bf75688a5671af6ba84b22497127bf343464fec1b4a13583a298b5b7"

  url "https://assets.paperspace.com/native-app/prod/darwin/Paperspace-#{version}.dmg"
  name "Paperspace"
  desc "Desktop app for the Paperspace cloud computing platform"
  homepage "https://www.paperspace.com/app/"

  livecheck do
    # curl -H 'Content-Type: application/json' \
    #   --data-binary \
    #   '{"component": "paperspaceInstaller", "os": "mac"}' \
    #   https://api.paperspace.io/receivers/latestVersion
    skip "No version information available"
  end

  depends_on macos: ">= :high_sierra"

  app "Paperspace.app"

  zap trash: [
    "~/Library/Application Support/Paperspace",
    "~/Library/Caches/Paperspace",
    "~/Library/Preferences/com.paperspace.Paperspace.plist",
    "~/Library/Preferences/paperspace.Paperspace.plist",
    "~/Library/Saved Application State/paperspace.Paperspace.savedState",
  ]
end
