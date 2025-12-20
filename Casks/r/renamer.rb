cask "renamer" do
  version "7.1.7"
  sha256 "36e28d9c94fde776f5e1c2540a9fa0af317345693399ddc4446a10ce09b03199"

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
    "~/Library/Logs/Renamer.log",
    "~/Library/Preferences/com.incrediblebee.Renamer#{version.major}.plist",
  ]
end
