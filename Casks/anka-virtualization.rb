cask "anka-virtualization" do
  version "2.3.3.127"
  sha256 "589ce177cbd6ce52e727f84f08372043ce7394a320b08f509131855c14cc4b02"

  url "https://d1efqjhnhbvc57.cloudfront.net/Anka-#{version}.pkg",
      verified: "d1efqjhnhbvc57.cloudfront.net/"
  appcast "https://ankadocs.veertu.com/docs/release-notes/"
  name "Anka Virtualization"
  desc "CLI tool for managing and creating virtual machines"
  homepage "https://veertu.com/"

  depends_on macos: ">= :yosemite"

  pkg "Anka-#{version}.pkg"

  uninstall launchctl: [
    "com.veertu.nlimit",
    "com.veertu.vlaunch",
    "com.veertu.anka.lupd",
    "com.veertu.anka.ankakbd",
    "com.veertu.anka.ankanetd",
  ],
            script:    {
              executable: "/Library/Application Support/Veertu/Anka/tools/uninstall.sh",
              args:       ["-f"],
              sudo:       true,
            }

  zap trash: [
    "~/.anka",
    "~/Library/Application Support/Veertu/Anka",
    "~/Library/Logs/Anka",
    "~/Library/Preferences/com.veertu.ankaview.plist",
    "/Library/Application Support/Veertu/Anka",
  ],
      rmdir: [
        "~/Library/Application Support/Veertu",
        "/Library/Application Support/Veertu",
      ]

  caveats do
    license "https://veertu.com/terms-and-conditions/"
  end
end
