cask "amazon-workdocs-drive" do
  arch arm: "mac_v2", intel: "mac"

  on_arm do
    version "1.0.11931.0"
    sha256 :no_check
  end
  on_intel do
    version "1.0.10729.0"
    sha256 :no_check
  end

  url "https://d3f2hupz96ggz3.cloudfront.net/#{arch}/AmazonWorkDocsDrive.pkg",
      verified: "d3f2hupz96ggz3.cloudfront.net/"
  name "Amazon WorkDocs Drive"
  desc "Fully managed, secure enterprise storage and sharing service"
  homepage "https://aws.amazon.com/workdocs/"

  deprecate! date: "2024-07-24", because: :discontinued

  depends_on macos: ">= :el_capitan"

  pkg "AmazonWorkDocsDrive.pkg"

  uninstall launchctl: [
              "aws.workdrive.Drive.Launcher",
              "aws.workdrive.Drive.Updater",
              "com.Amazon.WorkDocs.DriveUpdater",
            ],
            quit:      "aws.workdrive.Drive",
            signal:    ["TERM", "com.Amazon.WorkDocs.Drive"],
            pkgutil:   [
              "aws.workdrive.Drive",
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
