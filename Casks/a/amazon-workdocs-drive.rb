cask "amazon-workdocs-drive" do
  version "1.0.10729.0"
  sha256 :no_check

  url "https://d3f2hupz96ggz3.cloudfront.net/mac/AmazonWorkDocsDrive.pkg",
      verified: "d3f2hupz96ggz3.cloudfront.net/"
  name "Amazon WorkDocs Drive"
  desc "Fully managed, secure enterprise storage and sharing service"
  homepage "https://aws.amazon.com/workdocs/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.Amazon.WorkDocs.Drive"].short_version
    end
  end

  depends_on macos: ">= :el_capitan"

  pkg "AmazonWorkDocsDrive.pkg"

  uninstall launchctl: "com.Amazon.WorkDocs.DriveUpdater",
            signal:    ["TERM", "com.Amazon.WorkDocs.Drive"],
            pkgutil:   [
              "com.Amazon.WorkDocs.Drive",
              "com.Amazon.WorkDocs.Drive.pkg.core",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.Amazon.WorkDocs.DriveFinderExtension",
    "~/Library/Containers/com.Amazon.WorkDocs.DriveFinderExtension",
    "~/Library/LaunchAgents/com.amazon.workdocs.workdocsclient.plist",
    "~/Library/Preferences/com.amazon.workdocs.workdocsclient.plist",
  ]
end
