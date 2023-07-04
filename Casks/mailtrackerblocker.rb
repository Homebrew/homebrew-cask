cask "mailtrackerblocker" do
  version "0.7.15"
  sha256 "f0aa36354cb248ea0b742ecb987038ed691b042819907c9a8c2e162838dfbea4"

  url "https://github.com/apparition47/MailTrackerBlocker/releases/download/#{version}/MailTrackerBlocker.pkg",
      verified: "github.com/apparition47/MailTrackerBlocker/"
  name "MailTrackerBlocker"
  desc "Email tracker, read receipt and spy pixel blocker plugin for Apple Mail"
  homepage "https://apparition47.github.io/MailTrackerBlocker/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  pkg "MailTrackerBlocker.pkg"

  uninstall_postflight do
    if system_command("ps", args: ["x"]).stdout.match?("Mail.app/Contents/MacOS/Mail")
      opoo "Restart Mail.app to finish uninstalling #{token}"
    end
  end

  uninstall pkgutil: "com.onefatgiraffe.mailtrackerblocker",
            delete:  "/Library/Mail/Bundles/MailTrackerBlocker.mailbundle"

  zap trash: "~/Library/Containers/com.apple.mail/Data/Library/Application Support/" \
             "com.onefatgiraffe.mailtrackerblocker"
end
