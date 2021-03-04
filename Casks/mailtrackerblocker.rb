cask "mailtrackerblocker" do
  version "0.3.16"
  sha256 "feb3f217a6bf08423c7bcd2b4e97113384e1314123e37f57e2981a4b4d3cda46"

  url "https://github.com/apparition47/MailTrackerBlocker/releases/download/#{version}/MailTrackerBlocker.pkg",
      verified: "github.com/apparition47/MailTrackerBlocker/"
  appcast "https://github.com/apparition47/MailTrackerBlocker/releases.atom"
  name "MailTrackerBlocker"
  desc "Email tracker, read receipt and spy pixel blocker plugin for Apple Mail"
  homepage "https://apparition47.github.io/MailTrackerBlocker/"

  depends_on macos: ">= :el_capitan"

  pkg "MailTrackerBlocker.pkg"

  uninstall pkgutil: "com.onefatgiraffe.mailtrackerblocker",
            delete:  "/Library/Mail/Bundles/MailTrackerBlocker.mailbundle",
            quit:    ["com.apple.mail"]
end
