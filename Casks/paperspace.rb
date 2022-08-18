cask "paperspace" do
  version "11.9.12.5781"
  sha256 "a9f390d559a16cedc92166a576b9ca304d2f6a624ceb0d7b76b6593f0d09fc7c"

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
