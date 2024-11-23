cask "busycontacts" do
  version "2024.4.1"
  # The `bct-2024.3.1.zip` URL redirects to a file with a date at the end
  # (e.g. `bct-2024.3.1-2024-09-19-12-11.zip`) and this changes over time.
  # Upstream appears to delete the previous file when switching to a file with
  # a newer date, so we can't use the full URL with the date (the file may
  # eventually disappear and break cask installation) but we also can't use a
  # `sha256` with the redirecting version-only URL because the checksum will
  # change when the redirected date/file changes.
  sha256 :no_check

  url "https://www.busymac.com/download/bct-#{version}.zip"
  name "BusyContacts"
  desc "Contact manager focusing on efficiency"
  homepage "https://www.busymac.com/busycontacts/index.html"

  livecheck do
    url "https://www.busymac.com/download/BusyContacts.zip"
    regex(/bct[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  auto_updates true

  pkg "BusyContacts Installer.pkg"

  uninstall quit:    "com.busymac.busycontacts",
            signal:  ["KILL", "com.busymac.busycontacts"],
            pkgutil: "com.busymac.busycontacts.pkg"

  zap trash: [
    "~/Library/Application Scripts/com.busymac.busycontacts",
    "~/Library/Application Scripts/N4RA379GBW.com.busymac.busycontacts",
    "~/Library/Application Scripts/N4RA379GBW.com.busymac.contacts/",
    "~/Library/Application Support/Mail/BusyContacts/",
    "~/Library/Containers/com.busymac.busycontacts",
    "~/Library/Group Containers/N4RA379GBW.com.busymac.busycontacts",
    "~/Library/Group Containers/N4RA379GBW.com.busymac.contacts",
  ]
end
