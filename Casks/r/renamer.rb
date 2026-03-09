cask "renamer" do
  version "7.1.8"
  sha256 "82124300ca473cfddac6f453efbbb30d9b28d64e9206ec4459bbc5c0e03e743c"

  url "https://incredible-bee-honeycomb.fra1.digitaloceanspaces.com/apps/Renamer-#{version.major}/Renamer.zip",
      verified: "incredible-bee-honeycomb.fra1.digitaloceanspaces.com/"
  name "Renamer"
  desc "Batch file renamer application"
  homepage "https://renamer.com/"

  # The app checks a `latest-mac.yml` file that was previously published as
  # part of GitHub releases but the related repository has been removed. The
  # first-party website doesn't provide any up to date version information (only
  # older versions), so there doesn't appear to be any available version
  # information unless/until upstream modifies the app to check a new location.
  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.incrediblebee.Renamer"]&.short_version
    end
  end

  depends_on macos: ">= :sequoia"

  app "Renamer.app"

  zap trash: [
    "~/Library/Application Support/Renamer",
    "~/Library/HTTPStorages/com.incrediblebee.Renamer",
    "~/Library/Logs/Renamer.log",
    "~/Library/Preferences/com.incrediblebee.Renamer#{version.major}.plist",
  ]
end
