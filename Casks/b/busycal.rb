cask "busycal" do
  version "2026.4.5,2026-11-03-22-43-56"
  sha256 "34177391c479bb73be9f411c0ebc210cbf9b1e939d4eb2f9784631b9f12e80cb"

  url "https://downloads.busymac.com/bcl-#{version.csv.first}-#{version.csv.second}.zip"
  name "BusyCal"
  desc "Calendar software focusing on flexibility and reliability"
  homepage "https://busymac.com/busycal/index.html"

  livecheck do
    url "https://www.busymac.com/download/BusyCal.zip"
    regex(%r{/bcl[._-]v?(\d+(?:\.\d+)+)[._-](\d+(?:-\d+)+)\.zip}i)
    strategy :header_match do |headers, regex|
      headers["location"]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on :macos

  pkg "BusyCal Installer.pkg"

  uninstall launchctl: "N4RA379GBW.com.busymac.busycal3.alarm",
            quit:      "N4RA379GBW.com.busymac.busycal3.alarm",
            signal:    ["TERM", "com.busymac.busycal3"],
            pkgutil:   "com.busymac.busycal3.pkg",
            delete:    "/Applications/BusyCal.app"

  zap trash: [
    "~/Library/Application Scripts/com.busymac.busycal3*",
    "~/Library/Application Scripts/N4RA379GBW.com.busymac.busycal3",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.busymac.busycal3.sfl*",
    "~/Library/Containers/com.busymac.busycal3*",
    "~/Library/Containers/N4RA379GBW.com.busymac.busycal3.alarm",
    "~/Library/Group Containers/com.busymac.busycal3",
    "~/Library/Group Containers/N4RA379GBW.com.busymac.busycal3",
  ]
end
