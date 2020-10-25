cask "amazon-workdocs-drive" do
  version :latest
  sha256 :no_check

  # d3f2hupz96ggz3.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d3f2hupz96ggz3.cloudfront.net/mac/AmazonWorkDocsDrive.pkg"
  name "Amazon WorkDocs Drive"
  desc "Fully managed, secure enterprise storage and sharing service"
  homepage "https://aws.amazon.com/workdocs/"

  pkg "AmazonWorkDocsDrive.pkg"

  uninstall signal:    ["TERM", "com.Amazon.WorkDocs.Drive"],
            pkgutil:   ["com.Amazon.WorkDocs.Drive",
                        "com.Amazon.WorkDocs.Drive.pkg.Core"],
            launchctl: "com.Amazon.WorkDocs.DriveUpdater"
end
