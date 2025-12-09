cask "renamer" do
  version "7.1.4"
  sha256 "26dd7262aa5db8e42cb002a65f0d0ae8f359c51a7d95d96caa490e9062b7a722"

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
