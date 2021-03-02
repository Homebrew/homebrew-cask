cask "mailtrackerblocker" do
  version "0.3.15"
  sha256 "f2ba1b0a35bb404ca306b84604ee4998b855a33e456d74414d37607ee2177253"

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

  def caveats
    <<~EOS
      ℹ️  To enable and use (you'll need to do this again after updating):
        1. Open Mail, goto Preferences > General > Manage Plug-ins... >
           check "MailTrackerBlocker.mailbundle" > Apply and Restart Mail.
        2. Tap on the ⓧ  button to find out what was blocked.

      ⚠️  Note:
        Disabling "load remote content in messages"
        with MailTrackerBlocker enabled is redundant;
        re-enable this option for the best experience.
    EOS
  end
end
