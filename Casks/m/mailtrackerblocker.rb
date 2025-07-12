cask "mailtrackerblocker" do
  version "0.8.8"
  sha256 "62b76c18d52789b0e80384781a9e0421effff5887677a4666c4d085c2b6659ea"

  url "https://github.com/apparition47/MailTrackerBlocker/releases/download/#{version}/MailTrackerBlocker.pkg",
      verified: "github.com/apparition47/MailTrackerBlocker/"
  name "MailTrackerBlocker"
  desc "Email tracker, read receipt and spy pixel blocker plugin for Apple Mail"
  homepage "https://apparition47.github.io/MailTrackerBlocker/"

  no_autobump! because: :requires_manual_review

  deprecate! date: "2024-04-22", because: :moved_to_mas
  disable! date: "2025-04-22", because: :moved_to_mas

  auto_updates true
  depends_on macos: "<= :ventura"

  pkg "MailTrackerBlocker.pkg"

  uninstall_postflight do
    if system_command("ps", args: ["x"]).stdout.match?("Mail.app/Contents/MacOS/Mail")
      opoo "Restart Mail.app to finish uninstalling #{token}"
    end
  end

  uninstall pkgutil: "com.onefatgiraffe.mailtrackerblocker",
            delete:  "/Library/Mail/Bundles/MailTrackerBlocker.mailbundle"

  zap trash: "~/Library/Containers/com.apple.mail/Data/Library/Application Support/com.onefatgiraffe.mailtrackerblocker"
end
