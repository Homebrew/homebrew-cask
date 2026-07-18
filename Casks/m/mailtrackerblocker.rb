# typed: false

cask "mailtrackerblocker" do
  version "0.8.10"
  sha256 "1ed068e689a3a64bb489881d912a79b7f584e8bd564f073de8e0bc9a18c0ecb2"

  url "https://github.com/apparition47/MailTrackerBlocker/releases/download/#{version}/MailTrackerBlocker.pkg",
      verified: "github.com/apparition47/MailTrackerBlocker/"
  name "MailTrackerBlocker"
  desc "Email tracker, read receipt and spy pixel blocker plugin for Apple Mail"
  homepage "https://apparition47.github.io/MailTrackerBlocker/"

  no_autobump! because: :bumped_by_upstream

  auto_updates true
  depends_on maximum_macos: :ventura

  pkg "MailTrackerBlocker.pkg"

  generated_script "warn-if-mail-running.sh", content: <<~SH
    #!/bin/sh
    if /bin/ps x | /usr/bin/grep -q 'Mail.app/Contents/MacOS/[M]ail'; then
      echo 'Warning: Restart Mail.app to finish uninstalling mailtrackerblocker' >&2
    fi
  SH

  uninstall script:  {
              executable:   "warn-if-mail-running.sh",
              must_succeed: false,
            },
            pkgutil: "com.onefatgiraffe.mailtrackerblocker",
            delete:  "/Library/Mail/Bundles/MailTrackerBlocker.mailbundle"

  zap trash: "~/Library/Containers/com.apple.mail/Data/Library/Application Support/com.onefatgiraffe.mailtrackerblocker"
end
